---
title: Class DestroyPackageOperation
sidebar_label: DestroyPackageOperation
description: "销毁资源包裹操作"
---
# Class DestroyPackageOperation
销毁资源包裹操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DestroyPackageOperation.cs#L7)
```csharp title="Declaration"
public sealed class DestroyPackageOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DestroyPackageOperation.cs#L30)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DestroyPackageOperation.cs#L35)
```csharp title="Declaration"
protected override void InternalUpdate()
```
### InternalGetDescription()
获取操作的描述信息（子类可选实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DestroyPackageOperation.cs#L104)
```csharp title="Declaration"
protected override string InternalGetDescription()
```

##### Returns

`System.String`: 操作的描述字符串，默认返回空字符串。
## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
