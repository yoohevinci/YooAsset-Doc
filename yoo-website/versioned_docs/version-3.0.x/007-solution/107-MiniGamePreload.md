# [文件系统] 小游戏平台资源预下载

通过小游戏平台提供的预下载能力，将远端资源包提前写入平台缓存。

WebGL和小游戏平台通常使用`WebNetworkFileSystem`直接从远端加载资源包。如果小游戏平台提供了根据URL预下载文件到平台缓存的接口，可以通过`IWebPreloadStrategy`接入YooAsset，并继续使用标准的资源下载器。

平台需要满足以下条件：

1. 支持通过URL预下载远端文件到平台缓存。
2. 后续加载资源包时使用的URL必须和预下载URL一致。
3. 预下载请求完成后，平台能够在后续资源加载时命中缓存。

### 工作原理

配置预下载策略后，`WebNetworkFileSystem`会支持`ResourceDownloaderOperation`。

1. 资源下载器查询资源包是否已经存在于平台缓存。
2. 未缓存的资源包通过平台预下载请求进行下载。
3. 同一AssetBundle的加载和预下载互斥，运行时加载优先于尚未开始的预下载。
4. 多个下载器请求同一个资源包时，会共享底层预下载任务。

### 实现预下载策略

小游戏平台需要实现`IWebPreloadStrategy`接口：

```csharp
internal sealed class CustomPreloadStrategy : IWebPreloadStrategy
{
    /// <summary>
    /// 查询资源包是否已经存在于平台缓存
    /// </summary>
    public bool IsBundleCached(WebPreloadQueryArgs args)
    {
        // 根据平台提供的缓存查询接口返回结果。
        return false;
    }

    /// <summary>
    /// 创建平台专用的预下载请求
    /// </summary>
    public UnityWebRequest CreatePreloadRequest(WebPreloadRequestArgs args)
    {
        var request = new UnityWebRequest(args.Url, UnityWebRequest.kHttpVerbGET);

        // 注意：微信平台要求设置预下载参数或请求头。
        // request.SetRequestHeader("platform-preload", "1");

        return request;
    }
}
```

`IWebPreloadStrategy`属于YooAsset内部接口，扩展代码需要放在允许访问内部类型的小游戏扩展程序集下。可以直接参考或导入：

[Mini Game/Runtime/WechatFileSystem](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Mini%20Game/Runtime/WechatFileSystem)

### 配置文件系统

创建`WebNetworkFileSystem`参数时注册预下载策略：

```csharp
var fileSystemParams = new FileSystemParameters(fileSystemClass, packageRoot);
fileSystemParams.AddParameter(EFileSystemParameter.RemoteService, remoteService);
fileSystemParams.AddParameter(EFileSystemParameter.WebPlatformStrategy, new CustomPlatformStrategy());
fileSystemParams.AddParameter(EFileSystemParameter.WebPreloadStrategy, new CustomPreloadStrategy());
```

### 预下载资源

文件系统初始化和资源清单更新完成后，可以使用标准资源下载器：

```csharp
IEnumerator PreloadBundles()
{
    var package = YooAssets.GetPackage("DefaultPackage");
    var options = new ResourceDownloaderOptions(maximumConcurrency: 8, retryCount: 3);
    var downloader = package.CreateResourceDownloader(options);

    if (downloader.TotalDownloadCount == 0)
        yield break;

    downloader.StartDownload();
    yield return downloader;

    if (downloader.Status == EOperationStatus.Succeeded)
        Debug.Log("资源预下载成功！");
    else
        Debug.LogError($"资源预下载失败：{downloader.Error}");
}
```

也可以通过资源标签或资源列表，只预下载指定范围的资源。

### 微信小游戏预下载

微信平台调用`WX.GetCachePath()`查询大量文件时会产生严重的同步调用开销，因此示例中的`WechatPreloadStrategy.IsBundleCached()`保守返回`false`，由微信缓存机制处理重复请求。

这会产生以下影响：

1. 资源下载器无法准确跳过已经存在于微信缓存中的资源包。
2. 重复创建下载器时，已缓存的资源包仍可能出现在待下载列表中。
3. 是否产生实际网络流量由微信平台的缓存机制决定。

### 注意事项

1. 小游戏平台不支持同步下载，必须使用异步下载器。
2. 部分小游戏平台无法返回可靠的下载字节数和下载进度，下载完成后YooAsset会使用资源包大小回填报告。
3. 由于下载字节数不可靠，无法启用基于下载停滞检测的看门狗机制。
4. 预下载结果以平台请求是否成功为准，平台是否真正写入缓存由平台插件负责。
5. 预下载URL和AssetBundle加载URL必须保持一致，否则可能无法命中平台缓存。
