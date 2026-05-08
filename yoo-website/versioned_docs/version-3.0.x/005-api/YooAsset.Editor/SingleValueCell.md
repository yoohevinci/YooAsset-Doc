---
title: Class SingleValueCell
sidebar_label: SingleValueCell
description: "浮点数类型的表格单元格"
---
# Class SingleValueCell
浮点数类型的表格单元格

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class SingleValueCell : ITableCell, IComparable
```
## Properties
### CellValue
单元格数值

```csharp title="Declaration"
public object CellValue { get; set; }
```
### SearchTag
搜索标签

```csharp title="Declaration"
public string SearchTag { get; }
```
### SingleValue
双精度浮点形式的单元格值

```csharp title="Declaration"
public double SingleValue { get; }
```
## Methods
### GetDisplayObject()
获取用于界面渲染的显示对象

```csharp title="Declaration"
public object GetDisplayObject()
```

##### Returns

`System.Object`: 可用于 UI 绑定的对象实例### CompareTo(object)


```csharp title="Declaration"
public int CompareTo(object other)
```

##### Returns

`System.Int32`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Object` | *other* |


## Implements

* [YooAsset.Editor.ITableCell](/docs/api/YooAsset.Editor/ITableCell)
* `System.IComparable`
