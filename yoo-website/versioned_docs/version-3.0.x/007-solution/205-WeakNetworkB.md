# [版本热更] 弱联网环境方案B

无网络时销毁包裹，改用离线模式仅加载包体内置资源。

这是弱联网环境的简化方案。核心思路是优先走 HostPlayMode，如果拿不到远端资源版本（通常是无网络），就销毁当前包裹，改用 OfflinePlayMode 重新初始化，仅使用包体内置资源进入游戏。

与[弱联网环境方案A](./204-WeakNetworkA.md)相比：

- 优点：流程简单，离线分支只依赖包体内置资源，不需要处理沙盒缓存清单。
- 缺点：离线模式只加载包体内置资源，不会复用 HostPlayMode 下已下载到沙盒的资源。

适用于偏单机、内置资源较完整的项目。

### 完整流程

优先尝试联机模式，失败后回退到离线模式。

```csharp
private const string PackageName = "DefaultPackage";

private IEnumerator Start()
{
    // 优先尝试联机模式
    bool hostSucceed = false;
    yield return InitHostPlayMode(succeed => hostSucceed = succeed);
    if (hostSucceed)
    {
        StartGame();
        yield break;
    }

    // 联机失败（通常是无网络），回退到离线模式
    bool offlineSucceed = false;
    yield return InitOfflinePlayMode(succeed => offlineSucceed = succeed);
    if (offlineSucceed)
    {
        StartGame();
        yield break;
    }

    ShowMessageBox("资源初始化失败，请检查网络后重试！");
}
```

### 联机模式

任意一步失败（初始化、获取版本、加载清单、下载资源），都判定联机模式不可用，交给离线模式兜底。

```csharp
private IEnumerator InitHostPlayMode(System.Action<bool> callback)
{
    var package = YooAssets.CreatePackage(PackageName);

    var remoteServices = new RemoteService(defaultHostServer, fallbackHostServer);
    var initParameters = new HostPlayModeOptions();
    initParameters.BuiltinFileSystemParameters = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
    initParameters.CacheFileSystemParameters = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteServices);
    var initOperation = package.InitializePackageAsync(initParameters);
    yield return initOperation;
    if (initOperation.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    // 获取远端版本失败，判定为无网络
    var versionOp = package.RequestPackageVersionAsync(new RequestPackageVersionOptions(true, 30));
    yield return versionOp;
    if (versionOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    // 加载远端资源清单
    var manifestOp = package.LoadPackageManifestAsync(new LoadPackageManifestOptions(versionOp.PackageVersion, 60));
    yield return manifestOp;
    if (manifestOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    // 下载更新资源
    var downloader = package.CreateResourceDownloader(new ResourceDownloaderOptions(10, 3));
    if (downloader.TotalDownloadCount > 0)
    {
        downloader.StartDownload();
        yield return downloader;
        if (downloader.Status != EOperationStatus.Succeeded)
        {
            callback.Invoke(false);
            yield break;
        }
    }

    callback.Invoke(true);
}
```

### 离线模式

切换到离线模式前，必须先销毁并移除联机模式创建的包裹，再重新创建同名包裹。

```csharp
private IEnumerator InitOfflinePlayMode(System.Action<bool> callback)
{
    // 销毁并移除联机模式创建的包裹
    if (YooAssets.ContainsPackage(PackageName))
    {
        var oldPackage = YooAssets.GetPackage(PackageName);
        var destroyOp = oldPackage.DestroyPackageAsync();
        yield return destroyOp;

        // 注意：必须等待包裹销毁完成后才能移除
        YooAssets.RemovePackage(PackageName);
    }

    // 重新创建包裹，使用离线模式初始化
    var package = YooAssets.CreatePackage(PackageName);
    var initParameters = new OfflinePlayModeOptions();
    initParameters.BuiltinFileSystemParameters = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
    var initOperation = package.InitializePackageAsync(initParameters);
    yield return initOperation;
    if (initOperation.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    // 离线模式下获取的是包体内置版本
    var versionOp = package.RequestPackageVersionAsync();
    yield return versionOp;
    if (versionOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    // 加载包体内置资源清单
    var manifestOp = package.LoadPackageManifestAsync(new LoadPackageManifestOptions(versionOp.PackageVersion, 60));
    yield return manifestOp;
    if (manifestOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false);
        yield break;
    }

    callback.Invoke(true);
}
```

### 注意事项

1. `CreatePackage()`对同名包裹会抛异常，所以切换模式前必须先`DestroyPackageAsync()`，再调用`YooAssets.RemovePackage()`。
2. `RemovePackage()`要求包裹已经销毁，必须等待`DestroyPackageAsync()`完成后再调用。
3. 离线模式只加载包体内置资源，不会使用 HostPlayMode 下已下载到沙盒的资源。
4. 该方案适合偏单机、内置资源较完整的项目。如果需要离线复用已下载资源，请使用[弱联网环境方案A](./204-WeakNetworkA.md)。
