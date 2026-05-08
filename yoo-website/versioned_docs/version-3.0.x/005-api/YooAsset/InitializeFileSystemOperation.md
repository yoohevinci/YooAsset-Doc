---
title: Class InitializeFileSystemOperation
sidebar_label: InitializeFileSystemOperation
description: "初始化文件系统操作"
---
# Class InitializeFileSystemOperation
初始化文件系统操作

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public sealed class InitializeFileSystemOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
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
