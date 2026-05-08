---
title: Struct OperationAwaiter
sidebar_label: OperationAwaiter
description: "支持异步编程的自定义 Awaiter"
---
# Struct OperationAwaiter
支持异步编程的自定义 Awaiter

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct OperationAwaiter : ICriticalNotifyCompletion, INotifyCompletion
```
## Properties
### IsCompleted


```csharp title="Declaration"
public bool IsCompleted { get; }
```
## Methods
### GetResult()
获取操作结果

```csharp title="Declaration"
public void GetResult()
```
### OnCompleted(Action)


```csharp title="Declaration"
public void OnCompleted(Action continuation)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Action` | *continuation* |

### UnsafeOnCompleted(Action)


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
