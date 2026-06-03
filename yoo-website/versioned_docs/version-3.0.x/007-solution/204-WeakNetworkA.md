# [版本热更] 弱联网环境方案A

无网络时跳过资源更新，保证玩家正常进入游戏。

对于偏单机但是也有资源热更需求的项目。当玩家在无网络的时候，我们又不希望玩家卡在资源更新步骤而不能正常游戏。所以当玩家本地网络有问题的时候，我们可以跳过资源更新的步骤。

核心思路：

1. 初始化时拷贝包体内置清单到沙盒目录。
2. 优先尝试远端更新流程。
3. 如果远端版本、远端清单或资源下载失败，回退到本地可用版本。
4. 本地可用版本优先使用上次完整更新成功的版本，其次使用包体内置版本。
5. 只有资源下载完整成功之后，才记录本地版本。

关于获取包体内资源版本的[示例代码](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Samples~/Extension%20Sample/Runtime/ExtensionOperation/GetBuildinPackageVersionOperation.cs)

注意：下面示例里的`OperationHelper.StartOperation()`来自扩展示例工程，用于启动业务自定义操作。

### 初始化注意事项

在弱联网方案里，建议同时初始化内置文件系统和沙盒文件系统。

```csharp
private IEnumerator Start()
{
    var package = YooAssets.CreatePackage("DefaultPackage");

    // 注意：设置参数CopyBuiltinPackageManifest，可以初始化的时候拷贝内置清单到沙盒目录
    var builtinFileSystemParams = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
    builtinFileSystemParams.AddParameter(EFileSystemParameter.CopyBuiltinPackageManifest, true);

    // 注意：设置参数InstallCleanupMode，可以解决覆盖安装的时候将拷贝的内置清单文件清理的问题
    var cacheFileSystemParams = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteServices);
    cacheFileSystemParams.AddParameter(EFileSystemParameter.InstallCleanupMode, EInstallCleanupMode.None);

    var playModeParameters = new HostPlayModeOptions();
    playModeParameters.BuiltinFileSystemParameters = builtinFileSystemParams;
    playModeParameters.CacheFileSystemParameters = cacheFileSystemParams;
    var initOperation = package.InitializePackageAsync(playModeParameters);
    yield return initOperation;

    if (initOperation.Status != EOperationStatus.Succeeded)
    {
        ShowMessageBox($"资源系统初始化失败：{initOperation.Error}");
        yield break;
    }

    // 优先尝试远端更新流程
    bool remoteSucceed = false;
    string remoteError = string.Empty;
    yield return TryUpdateRemotePackage(package, (succeed, error) =>
    {
        remoteSucceed = succeed;
        remoteError = error;
    });
    if (remoteSucceed)
    {
        StartGame();
        yield break;
    }

    // 远端流程失败时，回退到本地可用版本
    bool localSucceed = false;
    string localError = string.Empty;
    yield return TryLoadLocalPackage(package, (succeed, error) =>
    {
        localSucceed = succeed;
        localError = error;
    });
    if (localSucceed)
    {
        StartGame();
        yield break;
    }

    ShowMessageBox($"资源更新失败：{remoteError}\n本地资源不可用：{localError}");
}
```

### 尝试远端更新

远端版本获取成功，只能说明版本文件可以访问，并不能保证后续资源清单和资源文件都能成功更新。

所以远端流程中任意一步失败，都不要直接保存版本号，而是交给本地兜底流程处理。

```csharp
private IEnumerator TryUpdateRemotePackage(ResourcePackage package, System.Action<bool, string> callback)
{
    // 获取远端最新的资源版本
    var versionOp = package.RequestPackageVersionAsync(new RequestPackageVersionOptions(true, 30));
    yield return versionOp;
    if (versionOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false, versionOp.Error);
        yield break;
    }

    // 加载远端资源清单
    var manifestOp = package.LoadPackageManifestAsync(new LoadPackageManifestOptions(versionOp.PackageVersion, 60));
    yield return manifestOp;
    if (manifestOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false, manifestOp.Error);
        yield break;
    }

    // 创建下载器并更新资源
    var downloader = package.CreateResourceDownloader(new ResourceDownloaderOptions(10, 3));
    if (downloader.TotalDownloadCount > 0)
    {
        downloader.StartDownload();
        yield return downloader;
        if (downloader.Status != EOperationStatus.Succeeded)
        {
            callback.Invoke(false, downloader.Error);
            yield break;
        }
    }

    // 注意：只有下载完整成功之后，才保存本地版本
    PlayerPrefs.SetString("GAME_VERSION", versionOp.PackageVersion);
    PlayerPrefs.Save();

    callback.Invoke(true, string.Empty);
}
```

### 回退到本地版本

远端更新失败后，优先尝试上次完整更新成功的版本。

如果没有本地版本记录，例如首次安装且无网络，则尝试加载包体内置版本。

```csharp
private IEnumerator TryLoadLocalPackage(ResourcePackage package, System.Action<bool, string> callback)
{
    string version = PlayerPrefs.GetString("GAME_VERSION", string.Empty);
    if (string.IsNullOrEmpty(version))
    {
        // 首次安装无网络时，尝试使用包体内置版本
        var builtinVersionOp = new GetBuildinPackageVersionOperation(package.PackageName);
        OperationHelper.StartOperation(package.PackageName, builtinVersionOp);
        yield return builtinVersionOp;
        if (builtinVersionOp.Status == EOperationStatus.Succeeded)
        {
            version = builtinVersionOp.PackageVersion;
        }
        else
        {
            callback.Invoke(false, builtinVersionOp.Error);
            yield break;
        }
    }

    // 加载本地缓存的资源清单文件
    // 注意：HostPlayMode下会优先使用沙盒里已有的Hash和Manifest文件。
    var manifestOp = package.LoadPackageManifestAsync(new LoadPackageManifestOptions(version, 60));
    yield return manifestOp;
    if (manifestOp.Status != EOperationStatus.Succeeded)
    {
        callback.Invoke(false, manifestOp.Error);
        yield break;
    }

    // 在正常开始游戏之前，还需要验证本地资源内容的完整性
    var downloader = package.CreateResourceDownloader(new ResourceDownloaderOptions(1, 1));
    if (downloader.TotalDownloadCount > 0)
    {
        callback.Invoke(false, "本地资源内容不完整。");
        yield break;
    }

    callback.Invoke(true, string.Empty);
}
```

### 本地版本记录策略

`GAME_VERSION`只应该记录“完整可用”的版本。

错误示例：

```csharp
// 不推荐：远端清单加载成功后就保存版本。
PlayerPrefs.SetString("GAME_VERSION", versionOp.PackageVersion);
```

推荐做法：

```csharp
// 推荐：资源下载器成功完成后再保存版本。
downloader.StartDownload();
yield return downloader;
if (downloader.Status == EOperationStatus.Succeeded)
{
    PlayerPrefs.SetString("GAME_VERSION", versionOp.PackageVersion);
    PlayerPrefs.Save();
}
```

### 注意事项

1. `CopyBuiltinPackageManifest`只负责把包体内置的Hash和Manifest文件拷贝到沙盒目录，并不会自动记录`GAME_VERSION`。
2. 首次安装且无网络时，需要通过包体内置版本作为兜底版本。
3. `LoadPackageManifestAsync()`在HostPlayMode下由主文件系统执行。主文件系统是沙盒文件系统时，如果本地没有对应版本的Hash或Manifest文件，会尝试从远端下载。
4. 离线进入游戏前，必须用下载器检查资源完整性。`TotalDownloadCount`为0时，才能说明当前清单需要的资源在本地完整可用。
5. 远端版本文件请求成功，不代表网络质量稳定。清单下载、资源下载任意一步失败，都应该允许回退到本地可用版本。
6. 离线兜底成立的前提是内置清单的拷贝目录和沙盒清单目录一致。默认情况下两者一致。如果给沙盒文件系统传入了自定义`packageRoot`，则必须同步设置`EFileSystemParameter.CopyBuiltinPackageManifestDestRoot`，否则首次无网络时无法加载内置版本清单。
