---
title: Class TableColumn
sidebar_label: TableColumn
description: "表格列定义"
---
# Class TableColumn
表格列定义

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L13)
```csharp title="Declaration"
public class TableColumn
```
## Properties
### ElementName
UI元素名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L28)
```csharp title="Declaration"
public string ElementName { get; }
```
### HeaderTitle
标题名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L33)
```csharp title="Declaration"
public string HeaderTitle { get; }
```
### ColumnStyle
单元列样式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L38)
```csharp title="Declaration"
public ColumnStyle ColumnStyle { get; }
```
### MakeCell
制作单元格元素
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L43)
```csharp title="Declaration"
public Func<VisualElement> MakeCell { get; set; }
```
### BindCell
绑定数据到单元格
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/TableColumn.cs#L48)
```csharp title="Declaration"
public Action<VisualElement, ITableData, ITableCell> BindCell { get; set; }
```
