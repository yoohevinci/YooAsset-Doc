# [资源构建] 图集打包零冗余

## 什么是散图纹理冗余

图片导入为 Sprite 后，同时包含以下两类数据：

- Sprite 对象：保存名称、矩形、轴心、边框、网格等信息。
- Texture2D 对象：保存源图片的纹理像素。

SpriteAtlas 构建后还会生成图集 Texture2D，并记录每个 Sprite 在图集中的矩形、UV 和纹理引用。正常情况下，最终资源包需要保留 Sprite 对象和图集纹理，但不再需要源图片的独立纹理像素。

因此，资源包里出现 Sprite 对象不代表存在纹理冗余。真正的冗余是同一份图像内容同时存在于图集纹理和源 Texture2D 中。

## 工作原理

SpriteAtlas 构建时，Unity 会生成图集纹理，并记录每个 Sprite 在图集中的位置和渲染信息。运行时无论是由 UI 预制体直接引用 Sprite，还是通过 `SpriteAtlas.GetSprite()` 获取 Sprite，最终都应使用图集纹理进行渲染。

在正常的 AssetBundle 构建过程中，Unity 会保留 Sprite 对象所需的信息，并剔除已经进入图集的源纹理数据，从而避免源纹理和图集纹理同时存在。

这意味着：

1. Sprite 对象仍然会参与构建，这是正常且必要的。
2. 源 Texture2D 的像素数据应从最终产物中剔除。
3. SpriteAtlas 或其依赖缺失时，Sprite 无法回退到源纹理，通常会显示为白块或透明块。

部分旧版 SBP 在处理 SpriteAtlas 时存在缺陷，可能错误地将源 Texture2D 保留在资源包中，进而造成散图纹理冗余。

## 推荐配置

#### 1. 使用兼容的 SBP 版本

将 `com.unity.scriptablebuildpipeline` 升级到当前 Unity 编辑器支持的稳定版本。不同 Unity 版本所兼容的 SBP 分支并不相同，不要把某个历史版本号当作所有项目的固定推荐版本。

例如，SBP `1.21.22` 曾出现过 SpriteAtlas 源纹理冗余问题，相关讨论见：[Issue #288](https://github.com/tuyoogame/YooAsset/issues/288)。

升级 SBP、Unity 编辑器或修改图集设置后，建议清理旧的构建结果并执行一次完整构建，避免缓存影响验证。

#### 2. 正确配置资源收集器

推荐按以下方式收集资源：

- SpriteAtlas：使用 `MainAssetCollector`，通常使用 `PackSeparately` 单独打包。
- 图集源 Sprite：使用 `StaticAssetCollector`，同一图集的源 Sprite 应采用一致的打包规则。
- UI 面板预制体：使用 `MainAssetCollector`，建议使用 `PackSeparately`。

`StaticAssetCollector` 会让源 Sprite 作为明确的构建资源参与打包，但不会将其写入 YooAsset 资源清单。因此，源 Sprite 无法通过地址单独加载，仍然可以被 UI 预制体引用，也可以被 SpriteAtlas 用来生成或取得 Sprite。
`StaticAssetCollector` 本身不会剔除源纹理。源纹理是否被正确剔除由 Unity 和 SBP 的构建过程决定。该收集器的作用是明确源 Sprite 的构建归属，并避免将其作为可寻址主资源写入清单。

#### 3. 正确处理图集依赖

SpriteAtlas 检视面板中的 `Include In Build` 控制图集是否作为 Sprite 的默认图集，并不只是控制 `.spriteatlas` 文件能否进入 AssetBundle。

- 开启时：Sprite 会建立对默认图集的引用。资源管理系统必须保证对应图集 Bundle 作为依赖被加载。
- 关闭时：Sprite 不保存默认图集引用，运行时需要监听 `SpriteAtlasManager.atlasRequested`，加载图集后调用事件提供的注册回调完成 Late Binding。

使用 SBP 构建管线并开启 `Include In Build` 时，可以启用自动图集依赖追踪：

```csharp
var buildParameters = new ScriptableBuildParameters();
buildParameters.TrackSpriteAtlasDependencies = true;
```

关于默认图集依赖、Late Binding 和运行时白块问题，请参考[图集白块问题](./305-SpriteAtlasWhiteBlock.md)。

## 图集加载范例

如果项目通过图集取得 Sprite，可以将 SpriteAtlas 作为可寻址主资源加载：

```csharp
private AssetHandle _atlasHandle;

public IEnumerator Start()
{
    var package = YooAssets.GetPackage("DefaultPackage");
    _atlasHandle = package.LoadAssetAsync<SpriteAtlas>(location);
    yield return _atlasHandle;

    if (_atlasHandle.Status == EOperationStatus.Succeeded)
    {
        var atlas = _atlasHandle.GetAssetObject<SpriteAtlas>();
        _image.sprite = atlas.GetSprite("icon_test");
    }
}

private void OnDestroy()
{
    _image.sprite = null;
    _atlasHandle?.Release();
}
```

使用图集期间应保留加载句柄，避免图集 Bundle 和纹理被提前卸载。

如果 UI 预制体已经直接引用源 Sprite，则不需要再调用 `GetSprite()`；只要资源清单中存在正确的图集 Bundle 依赖，加载预制体时便会同时加载图集。

## 验证构建结果

不要仅通过编辑器模拟模式判断是否存在冗余。模拟模式直接访问 AssetDatabase，不能反映真实 AssetBundle 的内容和依赖关系。

建议按以下步骤验证：

1. 使用目标平台执行一次完整构建。
2. 在构建报告中确认 SpriteAtlas、源 Sprite 和 UI 预制体被分配到预期的 Bundle。
3. 使用 AssetStudio 等工具检查 Bundle 内容。
4. 确认图集生成的 Texture2D 和 Sprite 对象存在。
5. 确认源图片对应的独立 Texture2D 像素数据没有再次写入 Bundle。
6. 使用离线模式或联机模式加载真实 Bundle，测试首次打开UI、资源卸载和重新加载。

分析 Texture2D 时应结合对象名称、尺寸和像素数据判断。图集纹理本身也是 Texture2D，资源包中出现 Texture2D 对象并不等同于存在冗余。

## 常见问题

#### 1. 升级 SBP 后仍然存在冗余

依次检查以下事项：

1. 是否执行了完整构建，而不是复用了旧的 SBP 缓存。
2. 源图片是否位于 `Resources` 目录。该目录中的资源会被 Unity Player 构建系统额外收集。
4. 同一图集的源 Sprite 是否被分散到多个 Bundle。
6. 实际使用的 SBP 版本是否与 `Packages/manifest.json` 和 `packages-lock.json` 中记录的版本一致。

#### 2. 剔除源纹理后显示白块

这通常不是纹理剔除失败，而是图集 Bundle 没有加载。检查以下事项：

1. SpriteAtlas 是否参与当前资源包构建。
2. 开启 `Include In Build` 时，UI 或 Sprite 所在资源是否记录了图集 Bundle 依赖。
4. 是否在 Sprite 仍被使用时释放了图集加载句柄。

