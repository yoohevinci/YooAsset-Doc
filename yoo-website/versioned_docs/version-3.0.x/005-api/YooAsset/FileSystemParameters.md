---
title: Class FileSystemParameters
sidebar_label: FileSystemParameters
description: "提供文件系统的创建参数与工厂方法"
---
# Class FileSystemParameters
提供文件系统的创建参数与工厂方法

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L9)
```csharp title="Declaration"
public class FileSystemParameters
```
## Properties
### FileSystemTypeName
文件系统的完整类型名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L19)
```csharp title="Declaration"
public string FileSystemTypeName { get; }
```
### PackageRoot
文件系统的根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L24)
```csharp title="Declaration"
public string PackageRoot { get; }
```
## Methods
### AddParameter(string, object)
添加自定义参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L42)
```csharp title="Declaration"
public void AddParameter(string paramName, object value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *paramName* | 参数名称 |
| `System.Object` | *value* | 参数值 |

### AddParameter(Enum, object)
添加自定义参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L52)
```csharp title="Declaration"
public void AddParameter(Enum paramType, object value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Enum` | *paramType* | 参数类型 |
| `System.Object` | *value* | 参数值 |

### CreateDefaultEditorFileSystemParameters(string)
创建默认的编辑器文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L93)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultEditorFileSystemParameters(string packageRoot)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageRoot* | 文件系统的根目录 |

### CreateDefaultBuiltinFileSystemParameters(string)
创建默认的内置文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L105)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultBuiltinFileSystemParameters(string packageRoot)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageRoot* | 文件系统的根目录 |

### CreateDefaultBuiltinFileSystemParameters()
创建默认的内置文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L116)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultBuiltinFileSystemParameters()
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例### CreateDefaultSandboxFileSystemParameters(IRemoteService, string)
创建默认的沙盒文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L129)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultSandboxFileSystemParameters(IRemoteService remoteService, string packageRoot)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.IRemoteService](../YooAsset/IRemoteService.md) | *remoteService* | 远端资源地址查询服务类 |
| `System.String` | *packageRoot* | 文件系统的根目录 |

### CreateDefaultSandboxFileSystemParameters(IRemoteService)
创建默认的沙盒文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L142)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultSandboxFileSystemParameters(IRemoteService remoteService)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.IRemoteService](../YooAsset/IRemoteService.md) | *remoteService* | 远端资源地址查询服务类 |

### CreateDefaultWebServerFileSystemParameters(bool)
创建默认的WebGL 服务器文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L155)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultWebServerFileSystemParameters(bool disableUnityWebCache)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *disableUnityWebCache* | 禁用Unity的网络缓存 |

### CreateDefaultWebServerFileSystemParameters()
创建默认的WebGL 服务器文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L167)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultWebServerFileSystemParameters()
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例### CreateDefaultWebNetworkFileSystemParameters(IRemoteService, bool)
创建默认的 WebGL 网络文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L181)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultWebNetworkFileSystemParameters(IRemoteService remoteService, bool disableUnityWebCache)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.IRemoteService](../YooAsset/IRemoteService.md) | *remoteService* | 远端资源地址查询服务类 |
| `System.Boolean` | *disableUnityWebCache* | 禁用Unity的网络缓存 |

### CreateDefaultWebNetworkFileSystemParameters(IRemoteService)
创建默认的 WebGL 网络文件系统参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/FileSystemParameters.cs#L195)
```csharp title="Declaration"
public static FileSystemParameters CreateDefaultWebNetworkFileSystemParameters(IRemoteService remoteService)
```

##### Returns

[YooAsset.FileSystemParameters](../YooAsset/FileSystemParameters.md): 配置好的文件系统参数实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.IRemoteService](../YooAsset/IRemoteService.md) | *remoteService* | 远端资源地址查询服务类 |

