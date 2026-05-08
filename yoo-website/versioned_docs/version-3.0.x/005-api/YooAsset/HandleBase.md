---
title: Class HandleBase
sidebar_label: HandleBase
description: "资源句柄基类，提供资源加载状态查询和释放功能。"
---
# Class HandleBase
资源句柄基类，提供资源加载状态查询和释放功能。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L9)
```csharp title="Declaration"
public abstract class HandleBase : IEnumerator, IDisposable
```
## Properties
### Status
当前状态
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L59)
```csharp title="Declaration"
public EOperationStatus Status { get; }
```
### Error
错误信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L72)
```csharp title="Declaration"
public string Error { get; }
```
### Progress
加载进度
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L85)
```csharp title="Declaration"
public float Progress { get; }
```
### IsDone
是否加载完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L98)
```csharp title="Declaration"
public bool IsDone { get; }
```
### IsValid
句柄是否有效
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L111)
```csharp title="Declaration"
public bool IsValid { get; }
```
## Methods
### Release()
释放资源句柄
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L28)
```csharp title="Declaration"
public void Release()
```
### Dispose()

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L42)
```csharp title="Declaration"
public void Dispose()
```
### GetAssetInfo()
获取资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L51)
```csharp title="Declaration"
public AssetInfo GetAssetInfo()
```

##### Returns

[YooAsset.AssetInfo](../YooAsset/AssetInfo.md): 资源信息### GetAwaiter()
获取用于 async/await 的 Awaiter
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/HandleBase.cs#L146)
```csharp title="Declaration"
public OperationAwaiter GetAwaiter()
```

##### Returns

[YooAsset.OperationAwaiter](../YooAsset/OperationAwaiter.md): 用于 async/await 的 Awaiter 对象
## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
