---
title: Class RequestPackageVersionOperation
sidebar_label: RequestPackageVersionOperation
description: "请求包裹版本操作"
---
# Class RequestPackageVersionOperation
请求包裹版本操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/RequestPackageVersionOperation.cs#L7)
```csharp title="Declaration"
public sealed class RequestPackageVersionOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### PackageVersion
当前最新的包裹版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/RequestPackageVersionOperation.cs#L24)
```csharp title="Declaration"
public string PackageVersion { get; }
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/RequestPackageVersionOperation.cs#L33)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/RequestPackageVersionOperation.cs#L38)
```csharp title="Declaration"
protected override void InternalUpdate()
```

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
