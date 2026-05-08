---
title: Class ClearCacheOperation
sidebar_label: ClearCacheOperation
description: "清理缓存操作"
---
# Class ClearCacheOperation
清理缓存操作

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public sealed class ClearCacheOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
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
### InternalGetDescription()
获取操作的描述信息（子类可选实现）

```csharp title="Declaration"
protected override string InternalGetDescription()
```

##### Returns

`System.String`: 操作的描述字符串，默认返回空字符串。
## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
