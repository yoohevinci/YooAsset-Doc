---
title: Class BuildContext
sidebar_label: BuildContext
description: "构建上下文容器，管理构建流程中各阶段共享的上下文对象"
---
# Class BuildContext
构建上下文容器，管理构建流程中各阶段共享的上下文对象

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class BuildContext
```
## Methods
### ClearAllContext()
清空所有上下文对象

```csharp title="Declaration"
public void ClearAllContext()
```
### SetContextObject(object)
注册上下文对象到容器

```csharp title="Declaration"
public void SetContextObject(object contextObject)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Object` | *contextObject* | 上下文对象实例 |

### GetContextObject&lt;T&gt;()
获取指定类型的上下文对象

```csharp title="Declaration"
public T GetContextObject<T>() where T : class
```

##### Returns

`<T>`: 对应类型的上下文对象实例##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 上下文对象的类型 |
### TryGetContextObject&lt;T&gt;()
尝试获取指定类型的上下文对象

```csharp title="Declaration"
public T TryGetContextObject<T>() where T : class
```

##### Returns

`<T>`: 对应类型的上下文对象实例，未找到时返回 null##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 上下文对象的类型 |
