# [版本热更] 预下载后续版本内容

通过预载清单提前下载后续版本的资源内容。

把后续版本的内容上传到CDN，注意：不要上传Version版本文件。

游戏内使用ResourcePackage.PrefetchManifestAsync(PrefetchManifestOptions options)方法。

```csharp
public IEnumerator Start()
{
    var package = YooAssets.GetPackage("DefaultPackage");
    var preDownloadContentOp = package.PrefetchManifestAsync(new PrefetchManifestOptions("next_version", 60));
    yield return preDownloadContentOp;
    
    var downloader = preDownloadContentOp.CreateResourceDownloader(new ResourceDownloaderOptions(10, 3)); //有多种参数可适配各类需求
    downloader.StartDownload();
    yield return downloader;
}
```

**注意：**

在调用ResourcePackage.ClearCacheAsync的时候，小心把预下载的内容清除了！

需要采用额外的策略，避免此行为发生。
