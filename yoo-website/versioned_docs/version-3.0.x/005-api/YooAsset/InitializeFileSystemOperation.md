---
title: Class InitializeFileSystemOperation
sidebar_label: InitializeFileSystemOperation
description: "初始化文件系统操作"
---
# Class InitializeFileSystemOperation
初始化文件系统操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/Internal/InitializeFileSystemOperation.cs#L9)
```csharp title="Declaration"
public sealed class InitializeFileSystemOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/Internal/InitializeFileSystemOperation.cs#L32)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/Internal/InitializeFileSystemOperation.cs#L37)
```csharp title="Declaration"
protected override void InternalUpdate()
```

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
