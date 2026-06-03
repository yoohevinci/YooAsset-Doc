# [资源分发] Steam平台支持DLC

在 Steam 平台下载 DLC 资源并解压到游戏目录加载。

在Steam官方平台下载DLC资产，然后解压到游戏目录下（通常是内置资产所在目录）。

在构建资源的时候BundledCopyOption为ClearAndCopyAll。这样在内置文件输出目录下会自动生成Catalog文件，可以将该Catalog文件和资源文件一起做DLC分发。

另外一个方案就是禁用内置文件系统的Catalog文件用于内置文件的查询。在禁用catalog文件后，所有资源文件的加载会全部从内置文件里读取并加载，该方案并不适用HostPlayMode！

```csharp
// 禁用Catalog文件！
// 说明：Catalog文件是自动生成的内置资产查询目录文件，用于记录构建APP时刻包体内的资产列表。
public IEnumerator Start()
{
    var builtinFileSystemParams = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
    // 已移除DISABLE_CATALOG_FILE参数。
    
    var createParameters = new OfflinePlayModeOptions();
    createParameters.BuiltinFileSystemParameters = builtinFileSystemParams;
    var initializationOperation = package.InitializePackageAsync(createParameters);
    yield return initializationOperation;
}
```
