---
title: Class ButtonCell
sidebar_label: ButtonCell
description: "按钮类型的表格单元格"
---
# Class ButtonCell
按钮类型的表格单元格

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ButtonCell : ITableCell, IComparable
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

* [YooAsset.Editor.ITableCell](/docs/3.0.x/api/YooAsset.Editor/ITableCell)
* `System.IComparable`
