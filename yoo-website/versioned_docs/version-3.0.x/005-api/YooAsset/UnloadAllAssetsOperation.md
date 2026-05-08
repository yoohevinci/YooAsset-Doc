---
title: Class UnloadAllAssetsOperation
sidebar_label: UnloadAllAssetsOperation
description: "卸载所有资源的异步操作"
---
# Class UnloadAllAssetsOperation
卸载所有资源的异步操作

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public sealed class UnloadAllAssetsOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
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
