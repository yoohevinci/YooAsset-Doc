---
title: Class AsyncOperationBase
sidebar_label: AsyncOperationBase
description: "异步操作基类"
---
# Class AsyncOperationBase
异步操作基类

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public abstract class AsyncOperationBase : IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### IsBusy
当前帧时间切片是否已用完

```csharp title="Declaration"
protected bool IsBusy { get; }
```
### Priority
任务优先级（值越大越优先执行）

```csharp title="Declaration"
public uint Priority { get; set; }
```
### Progress
异步操作的处理进度（0f - 1f）

```csharp title="Declaration"
public float Progress { get; protected set; }
```
### IsDone
异步操作是否已结束

```csharp title="Declaration"
public bool IsDone { get; }
```
### Error
操作失败时的错误描述

```csharp title="Declaration"
public string Error { get; }
```
### Status
异步操作的当前状态

```csharp title="Declaration"
public EOperationStatus Status { get; }
```
## Methods
### WaitForCompletion()
同步等待异步执行完毕

```csharp title="Declaration"
public void WaitForCompletion()
```
### InternalStart()
内部启动方法（子类必须实现）

```csharp title="Declaration"
protected abstract void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）

```csharp title="Declaration"
protected abstract void InternalUpdate()
```
### InternalAbort()
内部中止方法（子类可选实现）

```csharp title="Declaration"
protected virtual void InternalAbort()
```
### InternalDispose()
内部释放方法（子类可选实现）

```csharp title="Declaration"
protected virtual void InternalDispose()
```
### InternalGetDescription()
获取操作的描述信息（子类可选实现）

```csharp title="Declaration"
protected virtual string InternalGetDescription()
```

##### Returns

`System.String`: 操作的描述字符串，默认返回空字符串。### InternalWaitForCompletion()
内部同步等待方法（子类可选实现）

```csharp title="Declaration"
protected virtual void InternalWaitForCompletion()
```
### SetResult()
将操作标记为成功完成

```csharp title="Declaration"
protected void SetResult()
```
### SetError(string)
将操作标记为失败

```csharp title="Declaration"
protected void SetError(string error)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *error* | 错误描述 |

### CalculateMultiStageProgress(int, int, int, int)
计算多阶段操作的整体进度

```csharp title="Declaration"
protected float CalculateMultiStageProgress(int stageIndex, int stageCount, int remaining, int total)
```

##### Returns

`System.Single`: 返回归一化的整体进度值（0-1）
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int32` | *stageIndex* | 当前阶段索引（从0开始） |
| `System.Int32` | *stageCount* | 阶段总数 |
| `System.Int32` | *remaining* | 当前阶段剩余工作量 |
| `System.Int32` | *total* | 当前阶段总工作量 |

### AddChildOperation(AsyncOperationBase)
添加子任务

```csharp title="Declaration"
protected void AddChildOperation(AsyncOperationBase child)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AsyncOperationBase](../YooAsset/AsyncOperationBase.md) | *child* | 要添加的子任务 |

### RemoveChildOperation(AsyncOperationBase)
移除子任务

```csharp title="Declaration"
protected void RemoveChildOperation(AsyncOperationBase child)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.AsyncOperationBase](../YooAsset/AsyncOperationBase.md) | *child* | 要移除的子任务 |

### ExecuteOnce()
执行一次更新逻辑

```csharp title="Declaration"
protected void ExecuteOnce()
```
### ExecuteBatch(int)
批量执行一定次数的更新逻辑

```csharp title="Declaration"
protected void ExecuteBatch(int count = 1000)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int32` | *count* | 最大执行次数，默认1000次。 |

### ExecuteUntilComplete(int)
循环执行更新逻辑直到操作完成

```csharp title="Declaration"
protected void ExecuteUntilComplete(int sleepMilliseconds = 1)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int32` | *sleepMilliseconds* | 每次循环后的休眠时长（毫秒） |

### CompareTo(AsyncOperationBase)


```csharp title="Declaration"
public int CompareTo(AsyncOperationBase other)
```

##### Returns

`System.Int32`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.AsyncOperationBase](../YooAsset/AsyncOperationBase.md) | *other* |

### GetAwaiter()
获取用于 async/await 的等待器

```csharp title="Declaration"
public OperationAwaiter GetAwaiter()
```

##### Returns

[YooAsset.OperationAwaiter](../YooAsset/OperationAwaiter.md): 当前操作的等待器## Events
### Completed
异步操作的完成事件

```csharp title="Declaration"
public event Action<AsyncOperationBase> Completed
```
##### Event Type
`System.Action<YooAsset.AsyncOperationBase>`

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
