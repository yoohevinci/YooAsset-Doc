---
title: Interface ITableCell
sidebar_label: ITableCell
description: "表格单元格的数据抽象"
---
# Interface ITableCell
表格单元格的数据抽象

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableCell.cs#L7)
```csharp title="Declaration"
public interface ITableCell
```
## Properties
### CellValue
单元格数值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableCell.cs#L12)
```csharp title="Declaration"
object CellValue { get; set; }
```
## Methods
### GetDisplayObject()
获取用于界面渲染的显示对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableCell.cs#L18)
```csharp title="Declaration"
object GetDisplayObject()
```

##### Returns

`System.Object`: 可用于 UI 绑定的对象实例