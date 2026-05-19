---
title: Class EnsureBundleFileOperation
sidebar_label: EnsureBundleFileOperation
description: "确保资源包已就绪的异步操作"
---
# Class EnsureBundleFileOperation
确保资源包已就绪的异步操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/EnsureBundleFileOperation.cs#L7)
```csharp title="Declaration"
public sealed class EnsureBundleFileOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### Detail
资源包文件详情
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/EnsureBundleFileOperation.cs#L60)
```csharp title="Declaration"
public EnsureBundleFileOperation.BundleDetail Detail { get; }
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/EnsureBundleFileOperation.cs#L68)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/EnsureBundleFileOperation.cs#L72)
```csharp title="Declaration"
protected override void InternalUpdate()
```

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
