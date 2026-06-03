# [资源变种] 单包变体后缀

变体地址带后缀同包共存，运行时拼地址实现热切换。

> **关键字**：一次打包、运行期可热切换、按 Tag 精准下载。
> **一句话**：各档（变体）地址带后缀同包共存，运行时按封装层拼地址加载。
> **另一方案** 👉 [方案 A：多包裹同寻址](501-VariantMultiPackage.md)

---

### 1. 适用场景

- 运行期需要动态切换分辨率（例如「设置」里实时切画质）。
- 接受业务层通过一个封装层感知变体。
- 项目中存在「上层资产静态引用变体贴图」，且引用混乱（本方案需要为这批资产做连带变体，见第 5 节）。

### 2. 核心原理

> ⚠️ **底层约束**：同一 manifest 内一个 address 唯一映射一个 `PackageAsset`，框架不做运行时 variant 解析。这是两个方案存在的根因。

因此「同址不同档」不可行。方案 B 用地址后缀让各档（变体）拥有独立地址，再用业务封装层按当前档拼地址；同时用 AssetTags 支持按档批量查询 / 下载 / 清理。

### 3. 寻址规则：地址带变体后缀

自定义 `IAddressRule`，把变体名编码进地址（变体名通过收集器 `UserData` 传入）：

```csharp
using System.IO;
using YooAsset.Editor;

[DisplayName("定位地址: 文件名#变体")]
public class AddressByFileNameWithVariant : IAddressRule
{
    public string GetAssetAddress(AddressRuleData data)
    {
        string fileName = Path.GetFileNameWithoutExtension(data.AssetPath);
        // UserData 填该收集器的变体名，如 "2K" / "4K"
        return string.IsNullOrEmpty(data.UserData) ? fileName : $"{fileName}#{data.UserData}";
    }
}
```

- 地址形如 `hero#2K`、`hero#4K`，全局唯一，满足约束。
- 同时在收集器 / 分组的 `AssetTags` 填同名标签（`2K` / `4K`），便于按 Tag 操作。

### 4. 运行时：变体加载封装

```csharp
using YooAsset;

public static class VariantLoader
{
    /// <summary>全局当前变体，按机型或玩家设置切换</summary>
    public static string Variant = "4K";

    public static AssetHandle LoadAsync<T>(ResourcePackage pkg, string baseAddress)
        where T : UnityEngine.Object
    {
        string addr = $"{baseAddress}#{Variant}";
        if (pkg.CheckLocationValid(addr) == false)
            addr = $"{baseAddress}#2K"; //当前档缺失则回退基础档
        return pkg.LoadAssetAsync<T>(addr);
    }
}
```

> 业务层：`VariantLoader.LoadAsync<Texture2D>(pkg, "hero")`，切档只需改 `VariantLoader.Variant`。

### 5. 上层资产静态引用变体贴图的处理

这是方案 B 最关键、也是难点：上层资产（预制体 / 材质）静态持有了某档贴图引用，仅给贴图加后缀无法在运行时替换其引用。处理策略：

#### 5.1 连带变体（推荐: 针对被引用资产）

构建前预处理：遍历所有依赖了变体贴图的上层资产，按档复制出多份并把内部引用重定向到对应档贴图：

```text
hero_mat#2K / hero_mat#4K
hero_prefab#2K / hero_prefab#4K
```

这些上层资产也走 `AddressByFileNameWithVariant`。运行时同样通过 `VariantLoader` 加载。

> 实操：先用依赖分析找出「被变体贴图反向引用」的上层资产集合，对这批强制走连带变体；其余无静态引用的资产走 5.2。这样既控制包体，又避免引用错档。

#### 5.2 运行时动态组装（引用太混乱时）

上层资产不静态持有变体贴图，改为运行时按当前档加载贴图再赋值：

```csharp
var texHandle = VariantLoader.LoadAsync<Texture2D>(pkg, "hero");
await texHandle.Task;
material.SetTexture("_MainTex", texHandle.GetAssetObject<Texture2D>());
```

#### 5.3 本地化 × 变体的组合（避免爆炸）

不要做全排列。把这类资产拆到与本地化无关的组，命名 `attack#en#2K`，运行时按「语言 + 变体」拼地址动态加载。

> 注意：第 3 节的 `AddressByFileNameWithVariant` 只拼接一个 `UserData` 后缀。要产出 `attack#en#2K` 这种双维度地址，可让 `UserData` 直接传组合值 `en#2K`，或在规则里拼接多个字段（语言 + 变体）。

### 6. 按机型只下载 / 清理对应变体

YOO3 支持按 Tag 创建下载器与清理缓存，对应 Issue 的「只传 / 只下当前档 bundle」：

```csharp
// 只下载当前档 bundle
var downloader = package.CreateResourceDownloader(
    new ResourceDownloaderOptions(VariantLoader.Variant, downloadingMaxNumber: 10, failedTryAgain: 3));
await downloader.BeginDownload().Task;

// 切档后清理旧档缓存（按 tag）
// 参考 ClearCacheFilesOperation / ClearBundleFilesByTags 相关 API
```

按档查询资源信息：

```csharp
AssetInfo[] infos = package.GetAssetInfos(VariantLoader.Variant); // -> GetAssetInfosByTags
```

### 7. 首包裁剪（可选）

首包只内置当前主档，减小安装包：

```csharp
buildParameters.BundledCopyOption = EBundledCopyOption.OnlyCopyByTags; // 或 ClearAndCopyByTags
buildParameters.BundledCopyParams = "2K";
```

### 8. 优缺点

| ✅ 优点 | ⚠️ 缺点 |
|---|---|
| 一次打包 | 地址需后缀、业务需封装层 |
| 运行期可实时热切换 | 上层静态引用要连带做变体 |
| 按 Tag 精准下载 / 清理 | 构建前预处理较复杂 |

### 9. 方案选型对照

| 维度 | 方案 A | 方案 B（本文档） |
|---|---|---|
| 切换时机 | 安装 / 启动定档 | 运行期可热切换 |
| 业务侵入 | 零侵入 | 需封装层 |
| 上层引用连带 | 目录隔离自动完成 | 需构建前预处理生成变体 |
| 打包次数 | N 次 | 1 次 |
| 包体 / CDN | 各档独立路径 | 同包按 Tag 下载 |
