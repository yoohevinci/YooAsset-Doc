# 网页小游戏

网页（WebGL）小游戏的文件系统初始化与加密资源配置。

**注意事项**

1. 不支持同步加载
2. 不支持下载器

**文件系统初始化**

````csharp
IEnumerator InitPackage()
{
    // 创建远程服务类
    string defaultHostServer = GetHostServerURL();
    string fallbackHostServer = GetHostServerURL();
    IRemoteService remoteService = new RemoteService(defaultHostServer, fallbackHostServer);
    
    // 创建初始化参数
    var createParameters = new WebPlayModeOptions();
    createParameters.WebNetworkFileSystemParameters = FileSystemParameters.CreateDefaultWebNetworkFileSystemParameters(remoteService);
    createParameters.WebServerFileSystemParameters = FileSystemParameters.CreateDefaultWebServerFileSystemParameters();
    
    // 初始化ResourcePackage
    yield return package.InitializePackageAsync(createParameters);
}
````

```csharp
private class RemoteService : IRemoteService
{
    private readonly string _defaultHostServer;
    private readonly string _fallbackHostServer;

    public RemoteService(string defaultHostServer, string fallbackHostServer)
    {
        _defaultHostServer = defaultHostServer;
        _fallbackHostServer = fallbackHostServer;
    }

    public IReadOnlyList<string> GetRemoteUrls(string fileName)
    {
        return new[]
        {
            $"{_defaultHostServer}/{fileName}",
            $"{_fallbackHostServer}/{fileName}"
        };
    }
}
```

Web网络文件系统支持RawBundle和ArchiveBundle加载。若需要加载加密资源包，可在文件系统参数里按需配置 `AssetBundleDecryptor`、`RawBundleDecryptor` 或 `ArchiveBundleDecryptor`。
