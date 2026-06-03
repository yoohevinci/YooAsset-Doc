# [文件系统] 内置文件解包

自定义安卓 JAR 包内文件的读取与解包流程。

在安卓平台加载包体内的加密文件或原生文件时，内置文件系统会先把文件解包到沙盒内，再做后续加载或缓存处理。

默认情况下，YooAsset 会通过 UnityWebRequest 读取 JAR 包里的内置文件。如果项目需要接入其它读取方案，例如 BetterStreamingAssets，可以通过内置文件访问器接管文件读取过程。

### 解包策略

通过 `IBundleUnpackPolicy` 可以决定哪些内置资源包需要解包到沙盒目录。

```csharp
using YooAsset;

public sealed class CustomBundleUnpackPolicy : IBundleUnpackPolicy
{
    public bool IsUnpackBundle(BundleUnpackInfo unpackInfo)
    {
#if UNITY_ANDROID || UNITY_OPENHARMONY
        // 加密资源包需要解包后再走解密和缓存流程。
        if (unpackInfo.IsEncrypted)
            return true;

        // 原生文件和归档文件在安卓包体内无法直接以普通文件路径访问。
        if (unpackInfo.BundleType == (int)EBundleType.RawBundle)
            return true;
        if (unpackInfo.BundleType == (int)EBundleType.ArchiveBundle)
            return true;

        // 也可以按资源标签自定义解包规则。
        if (unpackInfo.HasTag("unpack"))
            return true;
#endif
        return false;
    }
}
```

### 内置文件访问器

通过 `IBuiltinFileAccessor` 可以接管 `StreamingAssets` 内置文件的存在检测和字节读取。安卓平台可在这里接入 BetterStreamingAssets 或项目自己的 JAR 文件读取方案。

```csharp
using UnityEngine;
using YooAsset;

public sealed class BetterStreamingAssetsFileAccessor : IBuiltinFileAccessor
{
    public bool FileExists(string filePath)
    {
        string relativePath = ToStreamingAssetsRelativePath(filePath);
        return BetterStreamingAssets.FileExists(relativePath);
    }

    public byte[] ReadAllBytes(string filePath)
    {
        string relativePath = ToStreamingAssetsRelativePath(filePath);
        return BetterStreamingAssets.ReadAllBytes(relativePath);
    }

    private static string ToStreamingAssetsRelativePath(string filePath)
    {
        string root = Application.streamingAssetsPath.Replace("\\", "/");
        string path = filePath.Replace("\\", "/");

        if (path.StartsWith(root))
            path = path.Substring(root.Length).TrimStart('/');

        return path;
    }
}
```

### 初始化接入

在创建内置文件系统参数时，添加自定义解包策略和内置文件访问器。

```csharp
private IEnumerator InitPackage()
{
    var package = YooAssets.CreatePackage("DefaultPackage");

    var builtinFileSystemParams = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
    builtinFileSystemParams.AddParameter(EFileSystemParameter.BundleUnpackPolicy, new CustomBundleUnpackPolicy());
    builtinFileSystemParams.AddParameter(EFileSystemParameter.BuiltinFileAccessor, new BetterStreamingAssetsFileAccessor());

    var cacheFileSystemParams = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteServices);

    var playModeOptions = new HostPlayModeOptions();
    playModeOptions.BuiltinFileSystemParameters = builtinFileSystemParams;
    playModeOptions.CacheFileSystemParameters = cacheFileSystemParams;

    var initOperation = package.InitializePackageAsync(playModeOptions);
    yield return initOperation;
}
```

### 注意事项

1. `BundleUnpackPolicy` 只决定资源包是否需要解包，实际读取内置文件的方式由 `BuiltinFileAccessor` 决定。
2. 如果没有设置 `BuiltinFileAccessor`，安卓平台会回退到默认的本地请求方式读取 JAR 包内文件。
3. 解包后的文件会写入内置文件系统的沙盒缓存目录，后续加载会优先使用缓存文件。
