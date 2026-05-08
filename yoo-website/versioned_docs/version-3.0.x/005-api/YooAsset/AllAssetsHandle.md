---
title: Class AllAssetsHandle
sidebar_label: AllAssetsHandle
description: "全资源句柄，用于加载资源包内所有资源对象。"
---
# Class AllAssetsHandle
全资源句柄，用于加载资源包内所有资源对象。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AllAssetsHandle.cs#L9)
```csharp title="Declaration"
public sealed class AllAssetsHandle : HandleBase, IEnumerator, IDisposable
```
## Properties
### AllAssetObjects
所有资源对象集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AllAssetsHandle.cs#L56)
```csharp title="Declaration"
public IReadOnlyList<Object> AllAssetObjects { get; }
```
## Methods
### WaitForAsyncComplete()
等待异步执行完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AllAssetsHandle.cs#L46)
```csharp title="Declaration"
public void WaitForAsyncComplete()
```
## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/AllAssetsHandle.cs#L24)
```csharp title="Declaration"
public event Action<AllAssetsHandle> Completed
```
##### Event Type
`System.Action<YooAsset.AllAssetsHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
