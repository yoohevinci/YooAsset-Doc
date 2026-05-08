---
title: Class InstantiateOperation
sidebar_label: InstantiateOperation
description: "游戏对象实例化操作"
---
# Class InstantiateOperation
游戏对象实例化操作

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L8)
```csharp title="Declaration"
public sealed class InstantiateOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### Result
实例化的游戏对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L30)
```csharp title="Declaration"
public GameObject Result { get; }
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L39)
```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L44)
```csharp title="Declaration"
protected override void InternalUpdate()
```
### InternalWaitForCompletion()
内部同步等待方法（子类可选实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L146)
```csharp title="Declaration"
protected override void InternalWaitForCompletion()
```
### InternalGetDescription()
获取操作的描述信息（子类可选实现）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L151)
```csharp title="Declaration"
protected override string InternalGetDescription()
```

##### Returns

`System.String`: 操作的描述字符串，默认返回空字符串。### Cancel()
取消实例化对象操作
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOperation.cs#L160)
```csharp title="Declaration"
public void Cancel()
```

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
