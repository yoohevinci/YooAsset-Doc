# [文件系统] 面向桌面的多开客户端

在 Windows、macOS 和 Linux 桌面平台上，同时运行同一个客户端的多个进程时，各进程默认会访问相同的缓存目录，可能发生下载、解包、清理和清单写入冲突。

YooAsset 通过**为每个进程分配独立的 `packageRoot`** 来实现缓存隔离。文件系统的所有可写路径都由创建时传入的 `packageRoot` 决定，因此只要为不同进程传入不同的根目录，即可让各进程操作各自的缓存数据，整个过程不依赖任何全局状态。

扩展库提供 `CacheRootHelper` 桥接类，帮助业务层获取 YooAsset 内部的默认缓存根目录，再据此按实例标识拼接隔离目录。

### 适用场景

该方案适用于同一台设备上需要同时运行多个客户端进程，并且每个进程可以使用独立缓存空间的场景。

目录隔离不会在共享目录上增加文件锁。如果多个进程使用相同的 `packageRoot`，它们仍会访问同一个缓存目录，写入冲突依然可能发生。

### 目录结构

不做隔离（实例标识为空）时，YooAsset 保持原有目录结构：

```text
{DefaultCacheRoot}/{PackageName}/
```

指定实例标识后，会在默认缓存根目录和 Package 目录之间增加实例目录：

```text
{DefaultCacheRoot}/instance-{instanceId}/{PackageName}/
```

例如，实例 `client-1` 同时使用两个 Package 时，目录结构如下：

```text
{DefaultCacheRoot}/instance-client-1/DefaultPackage/
{DefaultCacheRoot}/instance-client-1/RawPackage/
```

同一进程内的多个 Package 会归属到同一个实例目录，不同实例则使用不同的缓存空间。

### 设置隔离目录

在创建文件系统参数时显式传入隔离后的 `packageRoot`。

按实例标识拼出该进程独占的 `packageRoot`，再把它传给对应的文件系统参数工厂：

```csharp
using YooAsset;

public static class MultiInstanceStartup
{
    public static InitializationOperation InitPackage(string instanceId, string packageName, IRemoteService remoteService)
    {
        var package = YooAssets.CreatePackage(packageName);

        // 通过桥接类获取默认缓存根目录，再拼出该进程独占的隔离目录。
        string baseRoot = CacheRootHelper.GetDefaultCacheRoot();
        string packageRoot = $"{baseRoot}/instance-{instanceId}/{packageName}";

        // 缓存（沙盒）文件系统使用隔离目录。
        var cacheParams = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteService, packageRoot);
        var builtinParams = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();

        // 内置文件系统的解包可写数据也隔离到同一进程目录。
        // 注意：内置只读源（StreamingAssets）多进程共享，不需要隔离；
        // 只有解包目录 UnpackFileSystemRoot 属于可写数据，必须隔离，否则会落到默认共享目录并冲突。
        builtinParams.AddParameter(EFileSystemParameter.UnpackFileSystemRoot, packageRoot);

        // 可选：需要首次启动即可离线加载内置资源时，拷贝内置清单到沙盒，
        // 并把拷贝目标对齐到沙盒清单目录，避免与沙盒读取目录错位。
        builtinParams.AddParameter(EFileSystemParameter.CopyBuiltinPackageManifest, true);
        builtinParams.AddParameter(EFileSystemParameter.CopyBuiltinPackageManifestDestRoot,
            $"{packageRoot}/{CacheRootHelper.ManifestFolderName}");

        var initParameters = new HostPlayModeParameters
        {
            BuiltinFileSystemParameters = builtinParams,
            CacheFileSystemParameters = cacheParams,
        };
        return package.InitializeAsync(initParameters);
    }
}
```

要点：

1. `instanceId` 为必填参数，不能为空；请为每个进程分配稳定且唯一的实例标识。
2. `CacheRootHelper.cs` 属于扩展工程的文件：Extension Sample/Runtime/CacheRootHelper
3. `CacheRootHelper.GetDefaultCacheRoot()` 返回平台默认缓存根目录，也可以改用自定义的基础目录。
4. 需要把可写数据完整隔离时，必须让以下三处都指向该进程的隔离目录：
   - `SandboxFileSystem` 的 `packageRoot`（下载缓存）。
   - `BuiltinFileSystem` 的 `UnpackFileSystemRoot`（解包可写数据）；其只读源 `StreamingAssets` 多进程共享，不需要隔离。
   - 可选的 `CopyBuiltinPackageManifestDestRoot`（仅在开启 `CopyBuiltinPackageManifest` 时），拼接为 `{packageRoot}/{ManifestFolderName}` 对齐。

### Windows 多开示例

启动器可以通过命令行参数为不同进程分配实例标识：

```text
Game.exe --yoo-instance client-1
Game.exe --yoo-instance client-2
```

客户端启动后解析命令行参数，得到实例标识，再用它计算隔离目录：

```csharp
using System;
using YooAsset;

public static class MultiInstanceLauncher
{
    public static string ResolveInstanceId()
    {
        return GetRequiredArgument("--yoo-instance");
    }

    private static string GetRequiredArgument(string argumentName)
    {
        string[] arguments = Environment.GetCommandLineArgs();
        for (int i = 0; i < arguments.Length - 1; i++)
        {
            if (arguments[i] == argumentName &&
                string.IsNullOrWhiteSpace(arguments[i + 1]) == false)
            {
                return arguments[i + 1];
            }
        }

        throw new InvalidOperationException($"Missing startup argument: {argumentName}");
    }
}
```

macOS 和 Linux 可以采用相同方式，通过启动参数为每个进程传入不同的实例标识。

建议由启动器为每个客户端分配稳定且唯一的槽位标识，例如 `client-1`、`client-2`。同一个客户端应尽量复用原有标识，以便继续使用该实例已有的缓存。

### 隔离范围

隔离只作用于对应参数被显式指向隔离目录的可写数据：

1. `SandboxFileSystem` 的清单、资源包和临时文件（`packageRoot` 指向隔离目录时）。
2. `BuiltinFileSystem` 的解包清单、解包资源包和临时文件（必须设置 `UnpackFileSystemRoot` 指向隔离目录；否则会落到默认共享目录）。
3. Builtin Package 清单复制操作（开启 `CopyBuiltinPackageManifest` 时，需将 `CopyBuiltinPackageManifestDestRoot` 指向该实例目录）。

包体内的 `StreamingAssets` 属于只读数据，不会复制到实例目录，也不需要参与隔离。

`EditorFileSystem` 的模拟缓存不在该方案的隔离范围内。

### 注意事项

1. 多个进程必须使用不同的实例标识；相同标识不会提供跨进程写入保护。
2. `packageRoot` 在 Package 初始化时确定，初始化后不要更改。已经创建的文件系统会继续使用初始化时确定的缓存路径。
3. 同一进程内的多个 Package 建议复用同一实例标识，归属到同一个实例目录。
4. 删除某个实例的目录只会清理该实例的缓存，不会影响其他实例。
