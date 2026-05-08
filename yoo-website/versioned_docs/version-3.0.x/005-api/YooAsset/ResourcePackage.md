---
title: Class ResourcePackage
sidebar_label: ResourcePackage
description: "资源包裹类"
---
# Class ResourcePackage
资源包裹类

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class ResourcePackage
```
## Properties
### PackageName
包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### PackageValid
包裹是否有效

```csharp title="Declaration"
public bool PackageValid { get; }
```
### PackagePriority
包裹优先级（值越大越优先更新）

```csharp title="Declaration"
public uint PackagePriority { get; set; }
```
### InitializeStatus
初始化状态

```csharp title="Declaration"
public EOperationStatus InitializeStatus { get; }
```
## Methods
### InitializePackageAsync(InitializePackageOptions)
初始化包裹

```csharp title="Declaration"
public InitializePackageOperation InitializePackageAsync(InitializePackageOptions options)
```

##### Returns

[YooAsset.InitializePackageOperation](/docs/api/YooAsset/InitializePackageOperation): 返回初始化操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.InitializePackageOptions](/docs/api/YooAsset/InitializePackageOptions) | *options* | 初始化参数 |

### DestroyPackageAsync()
销毁包裹

```csharp title="Declaration"
public DestroyPackageOperation DestroyPackageAsync()
```

##### Returns

[YooAsset.DestroyPackageOperation](/docs/api/YooAsset/DestroyPackageOperation): 返回销毁包裹操作对象### RequestPackageVersionAsync()
请求最新的资源版本

```csharp title="Declaration"
public RequestPackageVersionOperation RequestPackageVersionAsync()
```

##### Returns

[YooAsset.RequestPackageVersionOperation](/docs/api/YooAsset/RequestPackageVersionOperation): 返回请求版本操作对象### RequestPackageVersionAsync(RequestPackageVersionOptions)
请求最新的资源版本

```csharp title="Declaration"
public RequestPackageVersionOperation RequestPackageVersionAsync(RequestPackageVersionOptions options)
```

##### Returns

[YooAsset.RequestPackageVersionOperation](/docs/api/YooAsset/RequestPackageVersionOperation): 返回请求版本操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.RequestPackageVersionOptions](/docs/api/YooAsset/RequestPackageVersionOptions) | *options* | 请求版本选项 |

### LoadPackageManifestAsync(LoadPackageManifestOptions)
加载指定版本的资源清单

```csharp title="Declaration"
public LoadPackageManifestOperation LoadPackageManifestAsync(LoadPackageManifestOptions options)
```

##### Returns

[YooAsset.LoadPackageManifestOperation](/docs/api/YooAsset/LoadPackageManifestOperation): 返回加载清单操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.LoadPackageManifestOptions](/docs/api/YooAsset/LoadPackageManifestOptions) | *options* | 加载清单选项 |

### PrefetchManifestAsync(PrefetchManifestOptions)
预取指定版本的包裹资源清单

```csharp title="Declaration"
public PrefetchManifestOperation PrefetchManifestAsync(PrefetchManifestOptions options)
```

##### Returns

[YooAsset.PrefetchManifestOperation](/docs/api/YooAsset/PrefetchManifestOperation): 返回预取清单操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.PrefetchManifestOptions](/docs/api/YooAsset/PrefetchManifestOptions) | *options* | 预取清单选项 |

### ClearCacheAsync(ClearCacheOptions)
清理缓存文件

```csharp title="Declaration"
public ClearCacheOperation ClearCacheAsync(ClearCacheOptions options)
```

##### Returns

[YooAsset.ClearCacheOperation](/docs/api/YooAsset/ClearCacheOperation): 返回清理缓存操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ClearCacheOptions](/docs/api/YooAsset/ClearCacheOptions) | *options* | 清理缓存选项 |

### GetPackageVersion()
获取当前加载包裹的版本信息

```csharp title="Declaration"
public string GetPackageVersion()
```

##### Returns

`System.String`: 返回当前包裹版本字符串### GetPackageNote()
获取当前加载包裹的备注信息

```csharp title="Declaration"
public string GetPackageNote()
```

##### Returns

`System.String`: 返回当前包裹备注字符串### GetPackageDetails()
获取当前加载包裹的详细信息

```csharp title="Declaration"
public PackageDetails GetPackageDetails()
```

##### Returns

[YooAsset.PackageDetails](/docs/api/YooAsset/PackageDetails): 返回包含包裹配置的详细信息对象### UnloadAllAssetsAsync()
强制回收所有资源

```csharp title="Declaration"
public UnloadAllAssetsOperation UnloadAllAssetsAsync()
```

##### Returns

[YooAsset.UnloadAllAssetsOperation](/docs/api/YooAsset/UnloadAllAssetsOperation): 返回卸载资源操作对象### UnloadAllAssetsAsync(UnloadAllAssetsOptions)
强制回收所有资源

```csharp title="Declaration"
public UnloadAllAssetsOperation UnloadAllAssetsAsync(UnloadAllAssetsOptions options)
```

##### Returns

[YooAsset.UnloadAllAssetsOperation](/docs/api/YooAsset/UnloadAllAssetsOperation): 返回卸载资源操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.UnloadAllAssetsOptions](/docs/api/YooAsset/UnloadAllAssetsOptions) | *options* | 卸载选项 |

### UnloadUnusedAssetsAsync()
回收不再使用的资源

```csharp title="Declaration"
public UnloadUnusedAssetsOperation UnloadUnusedAssetsAsync()
```

##### Returns

[YooAsset.UnloadUnusedAssetsOperation](/docs/api/YooAsset/UnloadUnusedAssetsOperation): 返回卸载未使用资源操作对象### UnloadUnusedAssetsAsync(UnloadUnusedAssetsOptions)
回收不再使用的资源

```csharp title="Declaration"
public UnloadUnusedAssetsOperation UnloadUnusedAssetsAsync(UnloadUnusedAssetsOptions options)
```

##### Returns

[YooAsset.UnloadUnusedAssetsOperation](/docs/api/YooAsset/UnloadUnusedAssetsOperation): 返回卸载未使用资源操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.UnloadUnusedAssetsOptions](/docs/api/YooAsset/UnloadUnusedAssetsOptions) | *options* | 卸载选项 |

### TryUnloadUnusedAsset(string, int)
尝试卸载指定的未使用资源

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

```csharp title="Declaration"
public void TryUnloadUnusedAsset(AssetInfo assetInfo, int loopCount = 10)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |
| `System.Int32` | *loopCount* | 最大循环卸载次数 |

### GetDownloadSize(string)
获取指定资源需要下载的文件总大小

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

```csharp title="Declaration"
public long GetDownloadSize(AssetInfo assetInfo)
```

##### Returns

`System.Int64`: 返回需要下载的字节数，0 表示不需要下载。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |

### GetAllAssetInfos()
获取所有的资源信息

```csharp title="Declaration"
public AssetInfo[] GetAllAssetInfos()
```

##### Returns

`YooAsset.AssetInfo[]`: 返回包含所有资源信息的数组### GetAssetInfos(string)
获取资源信息列表

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

```csharp title="Declaration"
public AssetInfo GetAssetInfo(string location)
```

##### Returns

[YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### GetAssetInfo(string, Type)
获取资源信息

```csharp title="Declaration"
public AssetInfo GetAssetInfo(string location, Type type)
```

##### Returns

[YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |

### GetAssetInfoByGuid(string)
获取资源信息

```csharp title="Declaration"
public AssetInfo GetAssetInfoByGuid(string assetGuid)
```

##### Returns

[YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetGuid* | 资源GUID |

### GetAssetInfoByGuid(string, Type)
获取资源信息

```csharp title="Declaration"
public AssetInfo GetAssetInfoByGuid(string assetGuid, Type type)
```

##### Returns

[YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo): 返回资源信息对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetGuid* | 资源GUID |
| `System.Type` | *type* | 资源类型 |

### IsLocationValid(string)
资源定位地址是否有效

```csharp title="Declaration"
public bool IsLocationValid(string location)
```

##### Returns

`System.Boolean`: 如果地址有效返回true，否则返回false。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadRawFileSync(AssetInfo)
同步加载原生文件

```csharp title="Declaration"
public RawFileHandle LoadRawFileSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.RawFileHandle](/docs/api/YooAsset/RawFileHandle): 返回原生文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |

### LoadRawFileSync(string)
同步加载原生文件

```csharp title="Declaration"
public RawFileHandle LoadRawFileSync(string location)
```

##### Returns

[YooAsset.RawFileHandle](/docs/api/YooAsset/RawFileHandle): 返回原生文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadRawFileAsync(AssetInfo, uint)
加载原生文件

```csharp title="Declaration"
public RawFileHandle LoadRawFileAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.RawFileHandle](/docs/api/YooAsset/RawFileHandle): 返回原生文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadRawFileAsync(string, uint)
加载原生文件

```csharp title="Declaration"
public RawFileHandle LoadRawFileAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.RawFileHandle](/docs/api/YooAsset/RawFileHandle): 返回原生文件操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSceneSync(string, LoadSceneMode, LocalPhysicsMode)
同步加载场景

```csharp title="Declaration"
public SceneHandle LoadSceneSync(string location, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None)
```

##### Returns

[YooAsset.SceneHandle](/docs/api/YooAsset/SceneHandle): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 场景的定位地址 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |

### LoadSceneSync(AssetInfo, LoadSceneMode, LocalPhysicsMode)
同步加载场景

```csharp title="Declaration"
public SceneHandle LoadSceneSync(AssetInfo assetInfo, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None)
```

##### Returns

[YooAsset.SceneHandle](/docs/api/YooAsset/SceneHandle): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 场景的资源信息 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |

### LoadSceneAsync(string, LoadSceneMode, LocalPhysicsMode, bool, uint)
加载场景

```csharp title="Declaration"
public SceneHandle LoadSceneAsync(string location, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None, bool allowSceneActivation = true, uint priority = 0)
```

##### Returns

[YooAsset.SceneHandle](/docs/api/YooAsset/SceneHandle): 返回场景操作句柄
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

```csharp title="Declaration"
public SceneHandle LoadSceneAsync(AssetInfo assetInfo, LoadSceneMode sceneMode = LoadSceneMode.Single, LocalPhysicsMode physicsMode = LocalPhysicsMode.None, bool allowSceneActivation = true, uint priority = 0)
```

##### Returns

[YooAsset.SceneHandle](/docs/api/YooAsset/SceneHandle): 返回场景操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 场景的资源信息 |
| `UnityEngine.SceneManagement.LoadSceneMode` | *sceneMode* | 场景加载模式 |
| `UnityEngine.SceneManagement.LocalPhysicsMode` | *physicsMode* | 场景物理模式 |
| `System.Boolean` | *allowSceneActivation* | 是否允许场景激活 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetSync(AssetInfo)
同步加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |

### LoadAssetSync&lt;TObject&gt;(string)
同步加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
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

```csharp title="Declaration"
public AssetHandle LoadAssetSync(string location, Type type)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |

### LoadAssetSync(string)
同步加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetSync(string location)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadAssetAsync(AssetInfo, uint)
加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetAsync&lt;TObject&gt;(string, uint)
加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
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

```csharp title="Declaration"
public AssetHandle LoadAssetAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 资源类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAssetAsync(string, uint)
加载资源对象

```csharp title="Declaration"
public AssetHandle LoadAssetAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.AssetHandle](/docs/api/YooAsset/AssetHandle): 返回资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsSync(AssetInfo)
同步加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |

### LoadSubAssetsSync&lt;TObject&gt;(string)
同步加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
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

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(string location, Type type)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |

### LoadSubAssetsSync(string)
同步加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsSync(string location)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadSubAssetsAsync(AssetInfo, uint)
加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsAsync&lt;TObject&gt;(string, uint)
加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
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

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadSubAssetsAsync(string, uint)
加载子资源对象

```csharp title="Declaration"
public SubAssetsHandle LoadSubAssetsAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle): 返回子资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsSync(AssetInfo)
同步加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(AssetInfo assetInfo)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |

### LoadAllAssetsSync&lt;TObject&gt;(string)
同步加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync<TObject>(string location) where TObject : Object
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
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

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(string location, Type type)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |

### LoadAllAssetsSync(string)
同步加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsSync(string location)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |

### LoadAllAssetsAsync(AssetInfo, uint)
加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(AssetInfo assetInfo, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo) | *assetInfo* | 资源信息 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsAsync&lt;TObject&gt;(string, uint)
加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync<TObject>(string location, uint priority = 0) where TObject : Object
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
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

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(string location, Type type, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.Type` | *type* | 子对象类型 |
| `System.UInt32` | *priority* | 加载的优先级 |

### LoadAllAssetsAsync(string, uint)
加载资源包内所有资源对象

```csharp title="Declaration"
public AllAssetsHandle LoadAllAssetsAsync(string location, uint priority = 0)
```

##### Returns

[YooAsset.AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle): 返回全资源操作句柄
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *location* | 资源的定位地址 |
| `System.UInt32` | *priority* | 加载的优先级 |

### CreateResourceDownloader(ResourceDownloaderOptions)
创建资源下载器，用于下载指定的资源标签关联的资源包文件。

```csharp title="Declaration"
public ResourceDownloaderOperation CreateResourceDownloader(ResourceDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](/docs/api/YooAsset/ResourceDownloaderOperation): 返回资源下载操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ResourceDownloaderOptions](/docs/api/YooAsset/ResourceDownloaderOptions) | *options* | 资源下载选项 |

### CreateResourceDownloader(BundleDownloaderOptions)
创建资源下载器，用于下载指定的资源信息列表依赖的资源包文件。

```csharp title="Declaration"
public ResourceDownloaderOperation CreateResourceDownloader(BundleDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](/docs/api/YooAsset/ResourceDownloaderOperation): 返回资源下载操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDownloaderOptions](/docs/api/YooAsset/BundleDownloaderOptions) | *options* | 资源下载选项 |

### CreateResourceUnpacker(ResourceUnpackerOptions)
创建内置资源解压器，用于解压指定的资源标签关联的资源包文件。

```csharp title="Declaration"
public ResourceUnpackerOperation CreateResourceUnpacker(ResourceUnpackerOptions options)
```

##### Returns

[YooAsset.ResourceUnpackerOperation](/docs/api/YooAsset/ResourceUnpackerOperation): 返回资源解压操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ResourceUnpackerOptions](/docs/api/YooAsset/ResourceUnpackerOptions) | *options* | 资源解压选项 |

### CreateResourceImporter(BundleImporterOptions)
创建资源导入器

```csharp title="Declaration"
public ResourceImporterOperation CreateResourceImporter(BundleImporterOptions options)
```

##### Returns

[YooAsset.ResourceImporterOperation](/docs/api/YooAsset/ResourceImporterOperation): 返回资源导入操作对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleImporterOptions](/docs/api/YooAsset/BundleImporterOptions) | *options* | 资源导入选项 |

