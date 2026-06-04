# [版本热更] 启动页面热更

将启动画面单独打包，实现启动页内容的热更新。

如果希望启动页面也可以热更，可以将启动页面的内容单独作为一个package构建，这里暂且命名为BootPackage，后续的游戏内容暂且命名为GamePackage。

注意：

1. 构建APP的时候，保证包体里包含完整的BootPackage内容。
2. 启动流程结束后，记得优先销毁BootPackage

关于BootPackage内容的更新可以放在游戏内，后台运行更新。

```csharp
// 联网模式
private IEnumerator InitHostPlayMode()
{
    // 初始化BootPackage
    // 注意：这里使用HostPlayMode模式
    var package = YooAssets.CreatePackage("BootPackage");
    ...（省略初始化参数）
    var initParameters = new HostPlayModeOptions();
    initParameters.BuiltinFileSystemParameters = builtinFileSystemParams;
    initParameters.CacheFileSystemParameters = cacheFileSystemParams;
    var initializationOperation = package.InitializePackageAsync(initParameters);
    yield return initializationOperation;
    
    // 获取记录的版本号
    var bootVersion = PlayerPrefs.GetString("BOOT_VERSION", string.Empty);
    
    // 加载缓存的资源清单文件
    // 注意：如果本地缓存清单不存在，这里会去远端请求
    // 注意：如果本地缓存清单被损坏，这里会返回失败
    var manifestOp = package.LoadPackageManifestAsync(new LoadPackageManifestOptions(bootVersion, 60));
    yield return manifestOp;
    if (manifestOp.Status != EOperationStatus.Succeeded)
    {
        //加载本地资源清单文件失败，走离线模式！
        yield break;
    }
    
    // 验证该版本清单内容的完整性。
    var downloader = package.CreateResourceDownloader(new ResourceDownloaderOptions(1, 1));
    if (downloader.TotalDownloadCount > 0)   
    {
        //资源内容本地并不完整，走离线模式！
        yield break;
    }
    
    // 初始化完成，可以加载启动页面了
}

// 离线模式
private IEnumerator InitOfflinePlayMode()
{
    // 先销毁旧的Package
    if (YooAssets.ContainsPackage("BootPackage"))
    {
        var oldPackage = YooAssets.GetPackage("BootPackage");
        var destroyOldPackage = oldPackage.DestroyPackageAsync();
        yield return destroyOldPackage;
    }

    // 初始化BootPackage
    // 注意：这里使用OfflinePlayMode模式
    var package = YooAssets.CreatePackage("BootPackage");
    ...（省略初始化参数）
    var initParameters = new OfflinePlayModeOptions();
    initParameters.BuiltinFileSystemParameters = builtinFileSystemParams;
    var initializationOperation = package.InitializePackageAsync(initParameters);
    yield return initializationOperation;
    
    // 这里是正常的更新流程
    var packageVersionOp = package.RequestPackageVersionAsync();
    yield return packageVersionOp;
    
    ...（省略其它步骤）
}
```
