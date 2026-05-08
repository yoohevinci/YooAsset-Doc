---
title: Class TableColumn
sidebar_label: TableColumn
description: "表格列定义"
---
# Class TableColumn
表格列定义

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TableColumn
```
## Properties
### ElementName
UI元素名称

```csharp title="Declaration"
public string ElementName { get; }
```
### HeaderTitle
标题名称

```csharp title="Declaration"
public string HeaderTitle { get; }
```
### ColumnStyle
单元列样式

```csharp title="Declaration"
public ColumnStyle ColumnStyle { get; }
```
### MakeCell
制作单元格元素

```csharp title="Declaration"
public Func<VisualElement> MakeCell { get; set; }
```
### BindCell
绑定数据到单元格

```csharp title="Declaration"
public Action<VisualElement, ITableData, ITableCell> BindCell { get; set; }
```
