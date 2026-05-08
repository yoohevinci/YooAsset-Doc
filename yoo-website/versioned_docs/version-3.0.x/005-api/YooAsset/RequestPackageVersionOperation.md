---
title: Class RequestPackageVersionOperation
sidebar_label: RequestPackageVersionOperation
description: "请求包裹版本操作"
---
# Class RequestPackageVersionOperation
请求包裹版本操作

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public sealed class RequestPackageVersionOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### PackageVersion
当前最新的包裹版本

```csharp title="Declaration"
public string PackageVersion { get; }
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalUpdate()
```

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
