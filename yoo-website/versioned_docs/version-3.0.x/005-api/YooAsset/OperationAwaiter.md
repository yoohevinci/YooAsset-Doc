---
title: Struct OperationAwaiter
sidebar_label: OperationAwaiter
description: "支持异步编程的自定义 Awaiter"
---
# Struct OperationAwaiter
支持异步编程的自定义 Awaiter

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/AsyncOperation/OperationAwaiter.cs#L10)
```csharp title="Declaration"
public readonly struct OperationAwaiter : ICriticalNotifyCompletion, INotifyCompletion
```
## Properties
### IsCompleted

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/AsyncOperation/OperationAwaiter.cs#L24)
```csharp title="Declaration"
public bool IsCompleted { get; }
```
## Methods
### GetResult()
获取操作结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/AsyncOperation/OperationAwaiter.cs#L32)
```csharp title="Declaration"
public void GetResult()
```
### OnCompleted(Action)

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/AsyncOperation/OperationAwaiter.cs#L37)
```csharp title="Declaration"
public void OnCompleted(Action continuation)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Action` | *continuation* |

### UnsafeOnCompleted(Action)

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/AsyncOperation/OperationAwaiter.cs#L43)
```csharp title="Declaration"
public void UnsafeOnCompleted(Action continuation)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Action` | *continuation* |


## Implements

* `System.Runtime.CompilerServices.ICriticalNotifyCompletion`
* `System.Runtime.CompilerServices.INotifyCompletion`
