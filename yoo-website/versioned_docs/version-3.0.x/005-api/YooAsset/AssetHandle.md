---
title: Class AssetHandle
sidebar_label: AssetHandle
description: "资源句柄，用于管理单个资源对象的加载和访问。"
---
# Class AssetHandle
资源句柄，用于管理单个资源对象的加载和访问。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L8)
```csharp title="Declaration"
public sealed class AssetHandle : HandleBase, IEnumerator, IDisposable
```
## Properties
### AssetObject
资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L56)
```csharp title="Declaration"
public Object AssetObject { get; }
```
## Methods
### WaitForAsyncComplete()
等待异步执行完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L45)
```csharp title="Declaration"
public void WaitForAsyncComplete()
```
### GetAssetObject&lt;TAsset&gt;()
获取资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L71)
```csharp title="Declaration"
public TAsset GetAssetObject<TAsset>() where TAsset : Object
```

##### Returns

`<TAsset>`: 资源对象，如果句柄无效则返回 null。##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TAsset` | 资源类型 |
### InstantiateSync()
同步实例化游戏对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L82)
```csharp title="Declaration"
public GameObject InstantiateSync()
```

##### Returns

`UnityEngine.GameObject`: 实例化的游戏对象### InstantiateSync(InstantiateOptions)
同步实例化游戏对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L93)
```csharp title="Declaration"
public GameObject InstantiateSync(InstantiateOptions options)
```

##### Returns

`UnityEngine.GameObject`: 实例化的游戏对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.InstantiateOptions](../YooAsset/InstantiateOptions.md) | *options* | 实例化选项 |

### InstantiateAsync()
实例化游戏对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L102)
```csharp title="Declaration"
public InstantiateOperation InstantiateAsync()
```

##### Returns

[YooAsset.InstantiateOperation](../YooAsset/InstantiateOperation.md): 实例化操作### InstantiateAsync(InstantiateOptions)
实例化游戏对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L113)
```csharp title="Declaration"
public InstantiateOperation InstantiateAsync(InstantiateOptions options)
```

##### Returns

[YooAsset.InstantiateOperation](../YooAsset/InstantiateOperation.md): 实例化操作
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.InstantiateOptions](../YooAsset/InstantiateOptions.md) | *options* | 实例化选项 |

## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AssetHandle.cs#L23)
```csharp title="Declaration"
public event Action<AssetHandle> Completed
```
##### Event Type
`System.Action<YooAsset.AssetHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
