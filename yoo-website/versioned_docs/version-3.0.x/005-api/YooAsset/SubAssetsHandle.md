---
title: Class SubAssetsHandle
sidebar_label: SubAssetsHandle
description: "子资源句柄，用于管理资源包内子资源对象的加载和访问。"
---
# Class SubAssetsHandle
子资源句柄，用于管理资源包内子资源对象的加载和访问。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L9)
```csharp title="Declaration"
public sealed class SubAssetsHandle : HandleBase, IEnumerator, IDisposable
```
## Properties
### SubAssetObjects
子资源对象集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L57)
```csharp title="Declaration"
public IReadOnlyList<Object> SubAssetObjects { get; }
```
## Methods
### WaitForAsyncComplete()
等待异步执行完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L46)
```csharp title="Declaration"
public void WaitForAsyncComplete()
```
### GetSubAssetObject&lt;TObject&gt;(string)
获取子资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L73)
```csharp title="Declaration"
public TObject GetSubAssetObject<TObject>(string assetName) where TObject : Object
```

##### Returns

`<TObject>`: 匹配的子资源对象，未找到则返回 null。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetName* | 子资源对象名称 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 子资源对象类型 |
### GetSubAssetObjects&lt;TObject&gt;()
获取所有的子资源对象集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L95)
```csharp title="Declaration"
public IReadOnlyList<TObject> GetSubAssetObjects<TObject>() where TObject : Object
```

##### Returns

`System.Collections.Generic.IReadOnlyList<<TObject>>`: 匹配类型的子资源对象集合##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TObject` | 子资源对象类型 |
## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SubAssetsHandle.cs#L24)
```csharp title="Declaration"
public event Action<SubAssetsHandle> Completed
```
##### Event Type
`System.Action<YooAsset.SubAssetsHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
