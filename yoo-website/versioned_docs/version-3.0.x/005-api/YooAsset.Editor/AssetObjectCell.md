---
title: Class AssetObjectCell
sidebar_label: AssetObjectCell
description: "资源对象类型的表格单元格"
---
# Class AssetObjectCell
资源对象类型的表格单元格

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L9)
```csharp title="Declaration"
public class AssetObjectCell : ITableCell, IComparable
```
## Properties
### CellValue
单元格数值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L14)
```csharp title="Declaration"
public object CellValue { get; set; }
```
### SearchTag
搜索标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L19)
```csharp title="Declaration"
public string SearchTag { get; }
```
### StringValue
字符串形式的资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L24)
```csharp title="Declaration"
public string StringValue { get; }
```
## Methods
### GetDisplayObject()
获取用于界面渲染的显示对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L44)
```csharp title="Declaration"
public object GetDisplayObject()
```

##### Returns

`System.Object`: 可用于 UI 绑定的对象实例### CompareTo(object)

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/DefaultCells/AssetObjectCell.cs#L52)
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

* [YooAsset.Editor.ITableCell](../YooAsset.Editor/ITableCell.md)
* `System.IComparable`
