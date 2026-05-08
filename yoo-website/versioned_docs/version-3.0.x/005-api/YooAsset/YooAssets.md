---
title: Class YooAssets
sidebar_label: YooAssets
description: "资源系统的主入口"
---
# Class YooAssets
资源系统的主入口

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public static class YooAssets
```
## Properties
### IsInitialized
是否已经初始化

```csharp title="Declaration"
public static bool IsInitialized { get; }
```
## Methods
### Initialize()
初始化资源系统

```csharp title="Declaration"
public static void Initialize()
```
### Initialize(ILogger)
初始化资源系统

```csharp title="Declaration"
public static void Initialize(ILogger logger)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ILogger](/docs/3.0.x/api/YooAsset/ILogger) | *logger* | 自定义日志处理 |

### Destroy()
销毁资源系统

```csharp title="Declaration"
public static void Destroy()
```
### CreatePackage(string)
创建资源包裹

```csharp title="Declaration"
public static ResourcePackage CreatePackage(string packageName)
```

##### Returns

[YooAsset.ResourcePackage](/docs/3.0.x/api/YooAsset/ResourcePackage): 新创建的资源包裹实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### CreatePackage(string, uint)
创建资源包裹

```csharp title="Declaration"
public static ResourcePackage CreatePackage(string packageName, uint packagePriority)
```

##### Returns

[YooAsset.ResourcePackage](/docs/3.0.x/api/YooAsset/ResourcePackage): 新创建的资源包裹实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.UInt32` | *packagePriority* | 包裹优先级（值越大越优先更新） |

### GetPackage(string)
获取资源包裹

```csharp title="Declaration"
public static ResourcePackage GetPackage(string packageName)
```

##### Returns

[YooAsset.ResourcePackage](/docs/3.0.x/api/YooAsset/ResourcePackage): 指定名称的资源包裹实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### TryGetPackage(string, out ResourcePackage)
尝试获取资源包裹

```csharp title="Declaration"
public static bool TryGetPackage(string packageName, out ResourcePackage package)
```

##### Returns

`System.Boolean`: 如果资源包裹存在返回true，否则返回false。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| [YooAsset.ResourcePackage](/docs/3.0.x/api/YooAsset/ResourcePackage) | *package* | 获取到的资源包裹，如果不存在则为null。 |

### GetPackages()
获取所有资源包裹

```csharp title="Declaration"
public static IReadOnlyList<ResourcePackage> GetPackages()
```

##### Returns

`System.Collections.Generic.IReadOnlyList<YooAsset.ResourcePackage>`: 当前已注册的所有资源包裹的只读列表### RemovePackage(string)
移除资源包裹

```csharp title="Declaration"
public static void RemovePackage(string packageName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### ContainsPackage(string)
检测资源包裹是否存在

```csharp title="Declaration"
public static bool ContainsPackage(string packageName)
```

##### Returns

`System.Boolean`: 如果资源包裹存在返回true，否则返回false。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### SetAsyncOperationMaxTimeSlice(long)
设置异步系统参数，每帧执行消耗的最大时间切片。

```csharp title="Declaration"
public static void SetAsyncOperationMaxTimeSlice(long milliseconds)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int64` | *milliseconds* | 最大时间切片（单位：毫秒），不能为负数。 |

