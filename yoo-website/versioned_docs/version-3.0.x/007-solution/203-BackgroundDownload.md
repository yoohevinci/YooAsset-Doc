# [版本热更] 移动端后台下载

玩家退出后在后台继续下载，下次启动时导入。

后台下载就是玩家在退出游戏后，让资源下载继续在后台进行。

主要是借助Unity官方的插件：https://github.com/Unity-Technologies/BackgroundDownload

该插件的使用教程大家自行学习，这里不再赘述。

解决方案的思路和上面的 [资源自定义分发解决方案](./501-CustomDistribution.md) 类似。

1. 后台下载资源文件到沙盒的固定目录下。
2. 下次游戏启动的时候，优先通过资源导入器导入后台下载的资源文件。

```csharp
/// <summary>
/// 创建资源导入器
/// 注意：资源文件名称必须和资源服务器部署的文件名称一致！
/// </summary>
public IEnumerator ImportBundles(ImportBundleInfo[] importInfos)
{
    var package = YooAssets.GetPackage("DefaultPackage");
    var options = new BundleImporterOptions(importInfos, 10, 3);
    var importer = package.CreateResourceImporter(options);
    importer.StartDownload();
    yield return importer;
}
```
