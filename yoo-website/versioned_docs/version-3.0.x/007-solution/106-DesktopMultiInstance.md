# [缓存管理] 面向桌面的多开客户端

在 Windows、macOS 和 Linux 桌面平台上，同时运行同一个客户端的多个进程时，各进程默认会访问相同的缓存目录，可能发生下载、解包、清理和清单写入冲突。

YooAsset 提供运行时全局实例标识 `FileSystemInstanceId`。为每个客户端进程设置不同的实例标识后，默认可写目录会自动按实例隔离，不同进程不再操作同一份缓存数据。

### 适用场景

该方案适用于同一台设备上需要同时运行多个客户端进程，并且每个进程可以使用独立缓存空间的场景。

实例目录隔离不会在共享目录上增加文件锁。如果多个进程使用相同的实例标识，它们仍会访问同一个缓存目录，写入冲突依然可能发生。

### 目录结构

未设置实例标识时，YooAsset 保持原有目录结构：

```text
{DefaultCacheRoot}/{PackageName}/
```

设置实例标识后，会在默认缓存根目录和 Package 目录之间增加实例目录：

```text
{DefaultCacheRoot}/instance-{FileSystemInstanceId}/{PackageName}/
```

例如，实例 `client-1` 同时使用两个 Package 时，目录结构如下：

```text
{DefaultCacheRoot}/instance-client-1/DefaultPackage/
{DefaultCacheRoot}/instance-client-1/RawPackage/
```

同一进程内的多个 Package 会归属到同一个实例目录，不同实例则使用不同的缓存空间。

### 设置实例标识

实例标识通过 `YooAssetConfiguration.SetFileSystemInstanceId()` 设置，并且必须在任意 Package 调用 `InitializePackageAsync()` 之前完成。

实例名称需要满足以下规则：

1. 名称长度不能超过 16 个字符。
2. 只能包含英文字母、数字、连字符和下划线。
3. 大写英文字母会自动转换为小写。
4. 传入 `null` 或空字符串表示不启用实例隔离。

建议由启动器为每个客户端分配稳定且唯一的槽位标识，例如 `client-1`、`client-2`。同一个客户端应尽量复用原有标识，以便继续使用该实例已有的缓存。

```csharp
using YooAsset;

public static class YooAssetStartup
{
    public static void Initialize(string instanceId)
    {
        // 必须在任意 Package 初始化之前设置。
        YooAssetConfiguration.SetFileSystemInstanceId(instanceId);
        YooAssets.Initialize();

        // 创建并初始化 Package。
        // ...
    }
}
```

### Windows 多开示例

启动器可以通过命令行参数为不同进程分配实例标识：

```text
Game.exe --yoo-instance client-1
Game.exe --yoo-instance client-2
```

客户端启动后解析命令行参数，并在初始化 YooAsset 之前设置实例标识：

```csharp
using System;
using YooAsset;

public static class MultiInstanceStartup
{
    public static void InitializeYooAsset()
    {
        string instanceId = GetRequiredArgument("--yoo-instance");
        YooAssetConfiguration.SetFileSystemInstanceId(instanceId);
        YooAssets.Initialize();
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

### 隔离范围

设置实例标识后，以下默认可写数据会使用当前实例的目录：

1. `SandboxFileSystem` 的清单、资源包和临时文件。
2. `BuiltinFileSystem` 的解包清单、解包资源包和临时文件。
3. Builtin Package 清单复制操作使用的默认目标目录。

包体内的 `StreamingAssets` 属于只读数据，不会复制到实例目录，也不需要参与隔离。

`EditorFileSystem` 的模拟缓存不在该方案的隔离范围内。在编辑器中使用 `SandboxFileSystem` 或 `BuiltinFileSystem` 时，其默认可写目录仍会应用实例隔离。

### 自定义路径

实例隔离只会自动应用于 YooAsset 生成的默认路径。使用自定义路径时，需要注意以下行为：

1. 为 `SandboxFileSystem` 设置自定义 `packageRoot` 后，`FileSystemInstanceId` 会被忽略并输出警告。调用方需要自行保证目录隔离。
2. 为 `BuiltinFileSystem` 设置自定义 `UnpackFileSystemRoot` 后，`FileSystemInstanceId` 会被忽略并输出警告。调用方需要自行保证目录隔离。
3. 设置了 `FileSystemInstanceId` 时，不能同时自定义 `CopyBuiltinPackageManifestDestRoot`，否则清单复制操作会失败。

### 兼容性与注意事项

1. 不设置实例标识时，YooAsset 保持原有缓存路径和行为，已有缓存可以继续复用。
2. 设置实例标识后，原共享缓存不会自动迁移到实例目录，首次运行该实例时可能重新下载或解包资源。
3. 多个进程必须使用不同的实例标识；相同标识不会提供跨进程写入保护。
4. 不要在 Package 初始化完成后修改实例标识。已经创建的文件系统会继续使用初始化时确定的缓存路径。
5. 删除某个实例的目录只会清理该实例的缓存，不会影响其他实例。
