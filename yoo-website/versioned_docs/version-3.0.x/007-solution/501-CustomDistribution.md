# [资源分发] 资源自定义分发

将热更资源压缩为 ZIP，下载解压后通过导入器导入。

希望将所有热更资源压缩到一个ZIP包里。玩家第一次启动游戏去下载ZIP包，下载完成后解压到沙盒目录下。

注意事项：

1. ZIP包的下载和解压可以安排在初始化流程里。
2. ZIP包的下载和解压只保证发生一次。
3. ZIP包的下载器需要满足断点续传和文件校验逻辑。
4. 所有工作准备完毕后，通过文件导入器导入解压的资源文件。
5. 在导入完成后，可以将解压文件全部删除。

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
