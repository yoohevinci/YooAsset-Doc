# [资源变种] 多包裹同寻址

每档变体独立出包、地址不变，按机型切换 CDN 路径。

> **关键字**：机型定档、业务零侵入、依赖连带自动处理。
> **一句话**：每档（变体）独立出包、地址不变，运行时按机型切 CDN 路径。
> **另一方案** 👉 [方案 B：单包变体后缀](502-VariantSinglePackage.md)

---

### 1. 适用场景

- 安装 / 首次启动时按设备机型确定一档（变体），运行期不再热切换。
- 希望业务代码完全不感知变体，`LoadAssetAsync("hero")` 在任何档位下写法一致。
- 项目中存在「预制体 / 材质等上层资产静态引用了变体贴图」，且引用关系较混乱（本方案能自动消化这种连带关系）。

### 2. 核心原理

> ⚠️ **底层约束**：同一个 Package 的同一份 manifest 内，一个寻址地址（address）唯一映射一个 `PackageAsset`，重复地址在收集阶段直接抛异常。这是两个方案存在的根因。

方案 A 的做法是：

> 让每档（变体）成为**独立构建产物、但寻址结构完全一致**的包；运行时按机型把远端 Host 指向不同 CDN 路径，地址保持不变。

由于每档是独立 manifest，两份里都有 address `hero`，互不冲突。

### 3. 资源目录组织

变体源资产平行存放，文件名保持一致：

```text
Assets/GameRes/Variants/2K/hero.png
Assets/GameRes/Variants/4K/hero.png
```

> 文件名一致是保证两份 manifest 寻址/依赖拓扑相同的前提。

### 4. 构建期：分组激活规则

为 `2K`、`4K` 各建一个收集分组，统一用 `AddressByFileName` 寻址规则，并各自挂上下面的 `IGroupActiveRule`，使每次构建只激活一个分组。

```csharp
using YooAsset.Editor;

/// <summary>构建期当前变体上下文（由构建脚本设置）</summary>
public static class VariantContext
{
    public static string CurrentVariant = "2K"; // 2K或4K
}

[DisplayName("变体激活: 2K")]
public class ActiveWhen2K : IGroupActiveRule
{
    public bool IsActiveGroup(GroupActiveRuleData data) => VariantContext.CurrentVariant == "2K";
}

[DisplayName("变体激活: 4K")]
public class ActiveWhen4K : IGroupActiveRule
{
    public bool IsActiveGroup(GroupActiveRuleData data) => VariantContext.CurrentVariant == "4K";
}
```

> `BundleCollectorGroup.GetAllCollectAssets` 会跳过未激活的分组，因此每次构建只会收集当前档资源。

### 5. 构建脚本：循环出包到不同目录

每档构建成同名 Package，输出到不同目录。

```csharp
public static void BuildAllVariants()
{
    foreach (var variant in new[] { "2K", "4K" })
    {
        VariantContext.CurrentVariant = variant;

        var p = new ScriptableBuildParameters();
        p.BuildOutputRoot = $"Bundles/{variant}"; //变体专属输出目录
        p.BundledFileRoot = BundleBuilderHelper.GetStreamingAssetsRoot();
        p.BuildPipeline   = nameof(EBuildPipeline.ScriptableBuildPipeline);
        p.BuildBundleType = (int)EBuildBundleType.AssetBundle;
        p.BuildTarget     = EditorUserBuildSettings.activeBuildTarget;
        p.PackageName     = "DefaultPackage"; //两档包名一致 => 寻址结构一致
        p.PackageVersion  = "1.0.0";
        p.FileNameStyle   = EFileNameStyle.HashName;

        var result = new ScriptableBuildPipeline().Run(p, true);
        UnityEngine.Debug.Log(result.Success ? $"{variant} 构建成功" : $"{variant} 失败: {result.ErrorInfo}");
    }
}
```

产物分别上传到 CDN 不同路径：

```text
https://cdn.xxx.com/2K/
https://cdn.xxx.com/4K/
```

### 6. 运行时：按机型选 Host，地址完全一致

YOO3 原生远端接口为 `IRemoteService.GetRemoteUrls(string fileName)`，返回按优先级排序的候选地址列表。变体差异只体现在 CDN 子目录：

```csharp
using System.Collections.Generic;
using YooAsset;

// 按机型把远端地址指向不同 CDN 子目录，其余逻辑与档位无关
public class VariantRemoteService : IRemoteService
{
    private readonly string _host;
    public VariantRemoteService(string variant) => _host = $"https://cdn.xxx.com/{variant}";
    public IReadOnlyList<string> GetRemoteUrls(string fileName) => new[] { $"{_host}/{fileName}" };
}

async UniTask InitPackage()
{
    string variant = PickVariantByDevice(); //低端=2K，中端=4K
    var package = YooAssets.CreatePackage("DefaultPackage");
    var remoteService = new VariantRemoteService(variant);
    var initOptions = new HostPlayModeOptions
    {
        BuiltinFileSystemParameters = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters(),
        CacheFileSystemParameters   = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteService),
    };
    await package.InitializePackageAsync(initOptions);

    var versionOp = package.RequestPackageVersionAsync();
    await versionOp;
    await package.LoadPackageManifestAsync(new LoadPackageManifestOptions(versionOp.PackageVersion, 60));
}
```

> 业务层：`package.LoadAssetAsync<Texture2D>("hero")` —— 地址永远是 `hero`，与档位无关。

#### 6.1 灰度 / 预下载另一档（可选）

可用 `PrefetchManifestAsync` 预载指定版本清单，便于切档前预热：

```csharp
await package.PrefetchManifestAsync(new PrefetchManifestOptions(targetVersion, 60));
// 基于 prefetch 结果创建 downloader 进行预下载
```

### 7. 上层资产静态引用变体贴图的处理

方案 A 对这种情况天然友好，无需手工排列组合：

- 这些上层资产（预制体 / 材质）不需要做地址变体。
- 因为每档是独立构建：构建 `4K` 包时，目录里被引用到的就是 `4K/hero.png`，依赖自动指向该档贴图。
- 「连带变体」通过目录隔离 + 独立构建自动完成。

唯一要保证：两档目录里被引用资产的名称 / 相对结构一致，使两份包的寻址与依赖拓扑相同。

### 8. 首包裁剪（可选）

如需让首包（StreamingAssets）只内置某一档，可配合首包拷贝选项：

```csharp
p.BundledCopyOption = EBundledCopyOption.OnlyCopyByTags;
p.BundledCopyParams = "2K"; //仅内置 2K
```

（前提是在收集器 / 分组上为各档打了对应 `AssetTags`。）

### 9. 优缺点

| ✅ 优点 | ⚠️ 缺点 |
|---|---|
| 业务零侵入，地址与档位无关 | 需构建 N 次（可脚本化） |
| 上层静态引用自动连带处理 | 运行期不便实时热切换 |
| 各档 catalog 一致、CDN 路径隔离清晰 | |

### 10. 方案选型对照

| 维度 | 方案 A 多 Package（本文档） | 方案 B 单包后缀 |
|---|---|---|
| 切换时机 | 安装 / 启动定档 | 运行期可热切换 |
| 业务侵入 | 零 | 需封装层 |
| 上层引用连带 | 目录隔离自动完成 | 需构建前预处理生成变体 |
| 打包次数 | N 次 | 1 次 |
| 包体 / CDN | 各档独立路径 | 同包按 Tag 下载 |
