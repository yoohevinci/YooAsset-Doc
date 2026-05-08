---
title: Class HandleBase
sidebar_label: HandleBase
description: "资源句柄基类，提供资源加载状态查询和释放功能。"
---
# Class HandleBase
资源句柄基类，提供资源加载状态查询和释放功能。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public abstract class HandleBase : IEnumerator, IDisposable
```
## Properties
### Status
当前状态

```csharp title="Declaration"
public EOperationStatus Status { get; }
```
### Error
错误信息

```csharp title="Declaration"
public string Error { get; }
```
### Progress
加载进度

```csharp title="Declaration"
public float Progress { get; }
```
### IsDone
是否加载完毕

```csharp title="Declaration"
public bool IsDone { get; }
```
### IsValid
句柄是否有效

```csharp title="Declaration"
public bool IsValid { get; }
```
## Methods
### Release()
释放资源句柄

```csharp title="Declaration"
public void Release()
```
### Dispose()


```csharp title="Declaration"
public void Dispose()
```
### GetAssetInfo()
获取资源信息

```csharp title="Declaration"
public AssetInfo GetAssetInfo()
```

##### Returns

[YooAsset.AssetInfo](/docs/api/YooAsset/AssetInfo): 资源信息### GetAwaiter()
获取用于 async/await 的 Awaiter

```csharp title="Declaration"
public OperationAwaiter GetAwaiter()
```

##### Returns

[YooAsset.OperationAwaiter](/docs/api/YooAsset/OperationAwaiter): 用于 async/await 的 Awaiter 对象
## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
