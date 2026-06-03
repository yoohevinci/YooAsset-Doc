# [资源构建] 视频打包和加载

视频以原生文件打包，加载时拷贝到沙盒后播放。

在Bundle Collector界面对视频文件使用PackVideoFile打包规则。

然后使用原生文件构建管线构建资源包。

```csharp
// 初始化文件系统注意事项
// 注意：已移除APPEND_FILE_EXTENSION参数
public IEnumerator Start()
{
    var builtinFileSystemParams = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();   
    var cacheFileSystemParams = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteServices);
    
    var createParameters = new HostPlayModeOptions();
    createParameters.BuiltinFileSystemParameters = builtinFileSystemParams;
    createParameters.CacheFileSystemParameters = cacheFileSystemParams;
    var initializationOperation = package.InitializePackageAsync(createParameters);
    yield return initializationOperation;
}
```

```csharp
// 视频加载范例
// 注意：使用 EnsureBundleFileAsync 获取本地文件路径，拷贝到沙盒目录后播放
public IEnumerator Start()
{
    var package = YooAssets.GetPackage("DefaultPackage");
    string location = "Assets/GameRes/Video/login.mp4";
    var ensureOp = package.EnsureBundleFileAsync(new EnsureBundleFileOptions(location));
    yield return ensureOp;
    
    // 拷贝到沙盒目录并命名为 .mp4 格式
    string bundleFilePath = ensureOp.Detail.BundleFilePath;
    string videoFileName = Path.GetFileNameWithoutExtension(location) + ".mp4";
    string destFilePath = Path.Combine(Application.persistentDataPath, videoFileName);
    if (File.Exists(destFilePath) == false)
    {
        File.Copy(bundleFilePath, destFilePath);
    }
    
    _videoPlayer.url = destFilePath;
    _videoPlayer.Play();
}
```
