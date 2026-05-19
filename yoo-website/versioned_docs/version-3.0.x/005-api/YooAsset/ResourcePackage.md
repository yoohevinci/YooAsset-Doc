---
title: Class ResourcePackage
sidebar_label: ResourcePackage
description: "资源包裹类"
---
# Class ResourcePackage
资源包裹类

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L12)
```csharp title="Declaration"
public class ResourcePackage
```
## Properties
### PackageName
包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L21)
```csharp title="Declaration"
public string PackageName { get; }
```
### PackageValid
包裹是否有效
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L26)
```csharp title="Declaration"
public bool PackageValid { get; }
```
### PackagePriority
包裹优先级（值越大越优先更新）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L39)
```csharp title="Declaration"
public uint PackagePriority { get; set; }
```
### InitializeStatus
初始化状态
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L48)
```csharp title="Declaration"
public EOperationStatus InitializeStatus { get; }
```
## Methods
### InitializePackageAsync(InitializePackageOptions)
初始化包裹
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L91)
```csharp title="Declaration"
public InitializePackageOperation InitializePackageAsync(InitializePackageOptions options)
```

##### Returns

[YooAsset.InitializePackageOperation](../YooAsset/InitializePackageOperation.md): 返回初始化操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.InitializePackageOptions](../YooAsset/InitializePackageOptions.md) | *options* | 初始化参数 |

### DestroyPackageAsync()
销毁包裹
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L120)
```csharp title="Declaration"
public DestroyPackageOperation DestroyPackageAsync()
```

##### Returns

[YooAsset.DestroyPackageOperation](../YooAsset/DestroyPackageOperation.md): 返回销毁包裹操作对象### RequestPackageVersionAsync()
请求最新的资源版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L133)
```csharp title="Declaration"
public RequestPackageVersionOperation RequestPackageVersionAsync()
```

##### Returns

[YooAsset.RequestPackageVersionOperation](../YooAsset/RequestPackageVersionOperation.md): 返回请求版本操作对象### RequestPackageVersionAsync(RequestPackageVersionOptions)
请求最新的资源版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L145)
```csharp title="Declaration"
public RequestPackageVersionOperation RequestPackageVersionAsync(RequestPackageVersionOptions options)
```

##### Returns

[YooAsset.RequestPackageVersionOperation](../YooAsset/RequestPackageVersionOperation.md): 返回请求版本操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.RequestPackageVersionOptions](../YooAsset/RequestPackageVersionOptions.md) | *options* | 请求版本选项 |

### LoadPackageManifestAsync(LoadPackageManifestOptions)
加载指定版本的资源清单
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L158)
```csharp title="Declaration"
public LoadPackageManifestOperation LoadPackageManifestAsync(LoadPackageManifestOptions options)
```

##### Returns

[YooAsset.LoadPackageManifestOperation](../YooAsset/LoadPackageManifestOperation.md): 返回加载清单操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.LoadPackageManifestOptions](../YooAsset/LoadPackageManifestOptions.md) | *options* | 加载清单选项 |

### PrefetchManifestAsync(PrefetchManifestOptions)
预取指定版本的包裹资源清单
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L178)
```csharp title="Declaration"
public PrefetchManifestOperation PrefetchManifestAsync(PrefetchManifestOptions options)
```

##### Returns

[YooAsset.PrefetchManifestOperation](../YooAsset/PrefetchManifestOperation.md): 返回预取清单操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.PrefetchManifestOptions](../YooAsset/PrefetchManifestOptions.md) | *options* | 预取清单选项 |

### ClearCacheAsync(ClearCacheOptions)
清理缓存文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L191)
```csharp title="Declaration"
public ClearCacheOperation ClearCacheAsync(ClearCacheOptions options)
```

##### Returns

[YooAsset.ClearCacheOperation](../YooAsset/ClearCacheOperation.md): 返回清理缓存操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ClearCacheOptions](../YooAsset/ClearCacheOptions.md) | *options* | 清理缓存选项 |

### GetPackageVersion()
获取当前加载包裹的版本信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L205)
```csharp title="Declaration"
public string GetPackageVersion()
```

##### Returns

`System.String`: 返回当前包裹版本字符串### GetPackageNote()
获取当前加载包裹的备注信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L215)
```csharp title="Declaration"
public string GetPackageNote()
```

##### Returns

`System.String`: 返回当前包裹备注字符串### GetPackageDetails()
获取当前加载包裹的详细信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L225)
```csharp title="Declaration"
public PackageDetails GetPackageDetails()
```

##### Returns

[YooAsset.PackageDetails](../YooAsset/PackageDetails.md): 返回包含包裹配置的详细信息对象### UnloadAllAssetsAsync()
强制回收所有资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L237)
```csharp title="Declaration"
public UnloadAllAssetsOperation UnloadAllAssetsAsync()
```

##### Returns

[YooAsset.UnloadAllAssetsOperation](../YooAsset/UnloadAllAssetsOperation.md): 返回卸载资源操作对象### UnloadAllAssetsAsync(UnloadAllAssetsOptions)
强制回收所有资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L248)
```csharp title="Declaration"
public UnloadAllAssetsOperation UnloadAllAssetsAsync(UnloadAllAssetsOptions options)
```

##### Returns

[YooAsset.UnloadAllAssetsOperation](../YooAsset/UnloadAllAssetsOperation.md): 返回卸载资源操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.UnloadAllAssetsOptions](../YooAsset/UnloadAllAssetsOptions.md) | *options* | 卸载选项 |

### UnloadUnusedAssetsAsync()
回收不再使用的资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L261)
```csharp title="Declaration"
public UnloadUnusedAssetsOperation UnloadUnusedAssetsAsync()
```

##### Returns

[YooAsset.UnloadUnusedAssetsOperation](../YooAsset/UnloadUnusedAssetsOperation.md): 返回卸载未使用资源操作对象### UnloadUnusedAssetsAsync(UnloadUnusedAssetsOptions)
回收不再使用的资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L274)
```csharp title="Declaration"
public UnloadUnusedAssetsOperation UnloadUnusedAssetsAsync(UnloadUnusedAssetsOptions options)
```

##### Returns

[YooAsset.UnloadUnusedAssetsOperation](../YooAsset/UnloadUnusedAssetsOperation.md): 返回卸载未使用资源操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.UnloadUnusedAssetsOptions](../YooAsset/UnloadUnusedAssetsOptions.md) | *options* | 卸载选项 |

### TryUnloadUnusedAsset(string, int)
尝试卸载指定的未使用资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L287)
```csharp title="Declaration"
public void TryUnloadUnusedAsset(string location, int loopCount = 10)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Int32` | *loopCount* | 最大循环卸载次数 |

### TryUnloadUnusedAsset(AssetInfo, int)
尝试卸载指定的未使用资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L299)
```csharp title="Declaration"
public void TryUnloadUnusedAsset(AssetInfo assetInfo, int loopCount = 10)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |
| `System.Int32` | *loopCount* | 最大循环卸载次数 |

### GetDownloadSize(string)
获取指定资源需要下载的文件总大小
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L312)
```csharp title="Declaration"
public long GetDownloadSize(string location)
```

##### Returns

`System.Int64`: 返回需要下载的字节数，0 表示不需要下载。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### GetDownloadSize(AssetInfo)
获取指定资源需要下载的文件总大小
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L324)
```csharp title="Declaration"
public long GetDownloadSize(AssetInfo assetInfo)
```

##### Returns

`System.Int64`: 返回需要下载的字节数，0 表示不需要下载。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |

### GetAllAssetInfos()
获取所有的资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L334)
```csharp title="Declaration"
public AssetInfo[] GetAllAssetInfos()
```

##### Returns

`YooAsset.AssetInfo[]`: 返回包含所有资源信息的数组### GetAssetInfos(string)
获取资源信息列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L345)
```csharp title="Declaration"
public AssetInfo[] GetAssetInfos(string tag)
```

##### Returns

`YooAsset.AssetInfo[]`: 返回匹配标签的资源信息数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *tag* | 资源标签 |

### GetAssetInfos(string[])
获取资源信息列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L357)
```csharp title="Declaration"
public AssetInfo[] GetAssetInfos(string[] tags)
```

##### Returns

`YooAsset.AssetInfo[]`: 返回匹配标签的资源信息数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String[]` | *tags* | 资源标签列表 |

### GetAssetInfo(string)
获取资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L368)
```csharp title="Declaration"
public AssetInfo GetAssetInfo(string location)
```

##### Returns

[YooAsset.AssetInfo](../YooAsset/AssetInfo.md): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### GetAssetInfo(string, Type)
获取资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L380)
```csharp title="Declaration"
public AssetInfo GetAssetInfo(string location, Type type)
```

##### Returns

[YooAsset.AssetInfo](../YooAsset/AssetInfo.md): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |

### GetAssetInfoByGuid(string)
获取资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L391)
```csharp title="Declaration"
public AssetInfo GetAssetInfoByGuid(string assetGuid)
```

##### Returns

[YooAsset.AssetInfo](../YooAsset/AssetInfo.md): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetGuid* | 资源GUID |

### GetAssetInfoByGuid(string, Type)
获取资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L403)
```csharp title="Declaration"
public AssetInfo GetAssetInfoByGuid(string assetGuid, Type type)
```

##### Returns

[YooAsset.AssetInfo](../YooAsset/AssetInfo.md): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetGuid* | 资源GUID |
| `System.Type` | *type* | 资源类型 |

### IsLocationValid(string)
资源定位地址是否有效
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L414)
```csharp title="Declaration"
public bool IsLocationValid(string location)
```

##### Returns

`System.Boolean`: 如果地址有效返回true，否则返回false。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadSceneSync(string, LoadSceneMode, LocalPhysicsMode)
同步加载场景
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L430)
```csharp title="Declaration"
public SceneHandle LoadSceneSync(string location, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None)
```

##### Returns

[YooAsset.SceneHandle](../YooAsset/SceneHandle.md): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 场景的定位地址 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |

### LoadSceneSync(AssetInfo, LoadSceneMode, LocalPhysicsMode)
同步加载场景
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L444)
```csharp title="Declaration"
public SceneHandle LoadSceneSync(AssetInfo assetInfo, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None)
```

##### Returns

[YooAsset.SceneHandle](../YooAsset/SceneHandle.md): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 场景的资源信息 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |

### LoadSceneAsync(string, LoadSceneMode, LocalPhysicsMode, bool, uint)
加载场景
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L459)
```csharp title="Declaration"
public SceneHandle LoadSceneAsync(string location, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None, bool allowSceneActivation = true, uint priority = 0)
```

##### Returns

[YooAsset.SceneHandle](../YooAsset/SceneHandle.md): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 场景的定位地址 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |
| `System.Boolean` | *allowSceneActivation* | 是否允许场景激活 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSceneAsync(AssetInfo, LoadSceneMode, LocalPhysicsMode, bool, uint)
加载场景
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L475)
```csharp title="Declaration"
public SceneHandle LoadSceneAsync(AssetInfo assetInfo, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None, bool allowSceneActivation = true, uint priority = 0)
```

##### Returns

[YooAsset.SceneHandle](../YooAsset/SceneHandle.md): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 场景的资源信息 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |
| `System.Boolean` | *allowSceneActivation* | 是否允许场景激活 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetSync(AssetInfo)
同步加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L499)
```csharp title="Declaration"
public AssetHandle LoadAssetSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |

### LoadAssetSync&lt;TObject&gt;(string)
同步加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L511)
```csharp title="Declaration"
public AssetHandle LoadAssetSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadAssetSync(string, Type)
同步加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L524)
```csharp title="Declaration"
public AssetHandle LoadAssetSync(string location, Type type)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |

### LoadAssetSync(string)
同步加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L536)
```csharp title="Declaration"
public AssetHandle LoadAssetSync(string location)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadAssetAsync(AssetInfo, uint)
加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L550)
```csharp title="Declaration"
public AssetHandle LoadAssetAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetAsync&lt;TObject&gt;(string, uint)
加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L563)
```csharp title="Declaration"
public AssetHandle LoadAssetAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadAssetAsync(string, Type, uint)
加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L577)
```csharp title="Declaration"
public AssetHandle LoadAssetAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetAsync(string, uint)
加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L590)
```csharp title="Declaration"
public AssetHandle LoadAssetAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](../YooAsset/AssetHandle.md): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsSync(AssetInfo)
同步加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L615)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |

### LoadSubAssetsSync&lt;TObject&gt;(string)
同步加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L627)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadSubAssetsSync(string, Type)
同步加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L640)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(string location, Type type)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |

### LoadSubAssetsSync(string)
同步加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L652)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(string location)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadSubAssetsAsync(AssetInfo, uint)
加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L666)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsAsync&lt;TObject&gt;(string, uint)
加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L679)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadSubAssetsAsync(string, Type, uint)
加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L693)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsAsync(string, uint)
加载子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L706)
```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](../YooAsset/SubAssetsHandle.md): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsSync(AssetInfo)
同步加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L731)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |

### LoadAllAssetsSync&lt;TObject&gt;(string)
同步加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L743)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadAllAssetsSync(string, Type)
同步加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L756)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(string location, Type type)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |

### LoadAllAssetsSync(string)
同步加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L768)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(string location)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadAllAssetsAsync(AssetInfo, uint)
加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L782)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsAsync&lt;TObject&gt;(string, uint)
加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L795)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 资源类型 |
### LoadAllAssetsAsync(string, Type, uint)
加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L809)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsAsync(string, uint)
加载资源包内所有资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L822)
```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](../YooAsset/AllAssetsHandle.md): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### EnsureBundleFileAsync(EnsureBundleFileOptions)
确保资源包文件已就绪
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L847)
```csharp title="Declaration"
public EnsureBundleFileOperation EnsureBundleFileAsync(EnsureBundleFileOptions options)
```

##### Returns

[YooAsset.EnsureBundleFileOperation](../YooAsset/EnsureBundleFileOperation.md): 返回确保资源包文件就绪的操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.EnsureBundleFileOptions](../YooAsset/EnsureBundleFileOptions.md) | *options* | 确保资源包文件已就绪的选项 |

### LoadBundleFileSync(AssetInfo)
同步加载资源包文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L866)
```csharp title="Declaration"
public BundleFileHandle LoadBundleFileSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.BundleFileHandle](../YooAsset/BundleFileHandle.md): 返回资源包文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |

### LoadBundleFileSync(string)
同步加载资源包文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L877)
```csharp title="Declaration"
public BundleFileHandle LoadBundleFileSync(string location)
```

##### Returns

[YooAsset.BundleFileHandle](../YooAsset/BundleFileHandle.md): 返回资源包文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadBundleFileAsync(AssetInfo, uint)
异步加载资源包文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L890)
```csharp title="Declaration"
public BundleFileHandle LoadBundleFileAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.BundleFileHandle](../YooAsset/BundleFileHandle.md): 返回资源包文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](../YooAsset/AssetInfo.md) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadBundleFileAsync(string, uint)
异步加载资源包文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L902)
```csharp title="Declaration"
public BundleFileHandle LoadBundleFileAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.BundleFileHandle](../YooAsset/BundleFileHandle.md): 返回资源包文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### CreateResourceDownloader(ResourceDownloaderOptions)
创建资源下载器，用于下载指定的资源标签关联的资源包文件。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L925)
```csharp title="Declaration"
public ResourceDownloaderOperation CreateResourceDownloader(ResourceDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](../YooAsset/ResourceDownloaderOperation.md): 返回资源下载操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ResourceDownloaderOptions](../YooAsset/ResourceDownloaderOptions.md) | *options* | 资源下载选项 |

### CreateResourceDownloader(BundleDownloaderOptions)
创建资源下载器，用于下载指定的资源信息列表依赖的资源包文件。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L936)
```csharp title="Declaration"
public ResourceDownloaderOperation CreateResourceDownloader(BundleDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](../YooAsset/ResourceDownloaderOperation.md): 返回资源下载操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDownloaderOptions](../YooAsset/BundleDownloaderOptions.md) | *options* | 资源下载选项 |

### CreateResourceUnpacker(ResourceUnpackerOptions)
创建内置资源解压器，用于解压指定的资源标签关联的资源包文件。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L949)
```csharp title="Declaration"
public ResourceUnpackerOperation CreateResourceUnpacker(ResourceUnpackerOptions options)
```

##### Returns

[YooAsset.ResourceUnpackerOperation](../YooAsset/ResourceUnpackerOperation.md): 返回资源解压操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ResourceUnpackerOptions](../YooAsset/ResourceUnpackerOptions.md) | *options* | 资源解压选项 |

### CreateResourceImporter(BundleImporterOptions)
创建资源导入器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/ResourcePackage.cs#L962)
```csharp title="Declaration"
public ResourceImporterOperation CreateResourceImporter(BundleImporterOptions options)
```

##### Returns

[YooAsset.ResourceImporterOperation](../YooAsset/ResourceImporterOperation.md): 返回资源导入操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleImporterOptions](../YooAsset/BundleImporterOptions.md) | *options* | 资源导入选项 |

