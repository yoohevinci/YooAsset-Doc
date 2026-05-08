---
title: Class UnloadUnusedAssetsOperation
sidebar_label: UnloadUnusedAssetsOperation
description: "卸载未使用资源的异步操作"
---
# Class UnloadUnusedAssetsOperation
卸载未使用资源的异步操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/UnloadUnusedAssetsOperation.cs#L6)
```csharp title="Declaration"
public sealed class UnloadUnusedAssetsOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/UnloadUnusedAssetsOperation.cs#L26)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/UnloadUnusedAssetsOperation.cs#L32)
```csharp title="Declaration"
protected override void InternalUpdate()
```
### InternalWaitForCompletion()
内部同步等待方法（子类可选实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/UnloadUnusedAssetsOperation.cs#L57)
```csharp title="Declaration"
protected override void InternalWaitForCompletion()
```
### InternalGetDescription()
获取操作的描述信息（子类可选实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/UnloadUnusedAssetsOperation.cs#L62)
```csharp title="Declaration"
protected override string InternalGetDescription()
```

##### Returns

`System.String`: 操作的描述字符串，默认返回空字符串。
## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
