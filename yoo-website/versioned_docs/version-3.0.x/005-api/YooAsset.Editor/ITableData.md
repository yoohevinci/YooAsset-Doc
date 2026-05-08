---
title: Interface ITableData
sidebar_label: ITableData
description: "表格行数据的抽象，包含可见性控制和单元格集合"
---
# Interface ITableData
表格行数据的抽象，包含可见性控制和单元格集合

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableData.cs#L9)
```csharp title="Declaration"
public interface ITableData
```
## Properties
### Visible
是否可见
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableData.cs#L14)
```csharp title="Declaration"
bool Visible { get; set; }
```
### Cells
单元格集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/ITableData.cs#L19)
```csharp title="Declaration"
IList<ITableCell> Cells { get; }
```
