# Google Asset Delivery

Google Play Asset Delivery（PAD）文件系统的接入与初始化配置。

与微信、抖音等小游戏平台不同，Google Play 文件系统面向的是**原生 Android 应用**：它通过 Google Play 的 Asset Delivery（资源分发）服务来下发随包资源，而不是从本地 `StreamingAssets` 读取。因此它在 YooAsset 中扮演的是**内置文件系统（BuiltinFileSystem）**的角色。

相关代码在扩展工程内：Mini Game --> Runtime --> [GooglePlayFileSystem](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Mini%20Game/Runtime/GooglePlayFileSystem)

**前置条件**

1. 安装 Google 官方的 [Play Asset Delivery](https://developer.android.com/guide/playcore/asset-delivery) 插件（命名空间 `Google.Play.AssetDelivery`）。
2. 在 Player Settings 的 `Scripting Define Symbols` 中添加宏定义 `GOOGLE_PLAY`（相关代码使用 `#if UNITY_ANDROID && GOOGLE_PLAY` 进行条件编译）。

**注意事项**

1. 不支持同步加载
2. 不支持加密的资源包（加密的 AssetBundle 会加载失败）

**文件系统初始化**

Google Play 文件系统作为内置文件系统使用，通常与缓存文件系统（沙盒）组合在联机运行模式（HostPlayMode）下工作：

````csharp
IEnumerator InitPackage()
{
    // 创建远程服务类
    string defaultHostServer = GetHostServerURL();
    string fallbackHostServer = GetHostServerURL();
    IRemoteService remoteService = new RemoteService(defaultHostServer, fallbackHostServer);

    // Asset Delivery 资源包的根目录
    string packageRoot = "yoo";

    // 创建初始化参数
    var createParameters = new HostPlayModeOptions();

    // 内置文件系统：通过 Google Play Asset Delivery 下发资源
    createParameters.BuiltinFileSystemParameters = GooglePlayFileSystemCreater.CreateFileSystemParameters(packageRoot);

    // 缓存文件系统：热更资源存放在本地沙盒
    createParameters.CacheFileSystemParameters = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteService);

    // 初始化ResourcePackage
    yield return package.InitializePackageAsync(createParameters);
}
````

**工作原理**

`GooglePlayFileSystem` 继承自 `BuiltinFileSystem`，仅重写了资源包的加载逻辑：在加载内置资源包时，调用 `PlayAssetDelivery.RetrieveAssetBundleAsync(bundleFileName)` 通过 Asset Delivery API 获取 AssetBundle，而不是走本地文件读取。其余清单读取、缓存校验等行为与内置文件系统保持一致。
