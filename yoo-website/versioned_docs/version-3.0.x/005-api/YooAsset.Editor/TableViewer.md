---
title: Class TableViewer
sidebar_label: TableViewer
description: "多列表格视图"
---
# Class TableViewer
多列表格视图

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TableViewer : VisualElement, IEventHandler, IResolvedStyle, ITransform, ITransitionAnimations, IExperimentalFeatures, IVisualElementScheduler
```
## Properties
### ItemsSource
数据源

```csharp title="Declaration"
public IList<ITableData> ItemsSource { get; set; }
```
### SelectedItems
选中的数据列表

```csharp title="Declaration"
public IReadOnlyList<ITableData> SelectedItems { get; }
```
## Methods
### GetHeaderElement(string)
获取指定名称的标题栏元素

```csharp title="Declaration"
public VisualElement GetHeaderElement(string elementName)
```

##### Returns

`UnityEngine.UIElements.VisualElement`: 匹配的 ToolbarButton 元素，未找到时返回 null。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *elementName* | 标题栏元素名称 |

### AddColumn(TableColumn)
添加单元列

```csharp title="Declaration"
public void AddColumn(TableColumn column)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.TableColumn](../YooAsset.Editor/TableColumn.md) | *column* | 要添加的列定义 |

### AddColumns(IList&lt;TableColumn&gt;)
批量添加单元列

```csharp title="Declaration"
public void AddColumns(IList<TableColumn> columns)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.IList<YooAsset.Editor.TableColumn>` | *columns* | 要添加的列定义集合 |

### RebuildView()
重建表格视图

```csharp title="Declaration"
public void RebuildView()
```
### ClearAll(bool, bool)
清空表格数据

```csharp title="Declaration"
public void ClearAll(bool clearColumns, bool clearSource)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *clearColumns* | 是否同时清空列定义 |
| `System.Boolean` | *clearSource* | 是否同时清空数据源 |

## Events
### TableDataClicked
当点击表格数据行时触发

```csharp title="Declaration"
public event Action<PointerDownEvent, ITableData> TableDataClicked
```
##### Event Type
`System.Action<UnityEngine.UIElements.PointerDownEvent,YooAsset.Editor.ITableData>`
### TableHeadClicked
当点击表格标题列时触发

```csharp title="Declaration"
public event Action<TableColumn> TableHeadClicked
```
##### Event Type
`System.Action<YooAsset.Editor.TableColumn>`
### SelectionChanged
当选中项变化时触发

```csharp title="Declaration"
public event Action<ITableData> SelectionChanged
```
##### Event Type
`System.Action<YooAsset.Editor.ITableData>`

## Implements

* `UnityEngine.UIElements.IEventHandler`
* `UnityEngine.UIElements.IResolvedStyle`
* `UnityEngine.UIElements.ITransform`
* `UnityEngine.UIElements.Experimental.ITransitionAnimations`
* `UnityEngine.UIElements.IExperimentalFeatures`
* `UnityEngine.UIElements.IVisualElementScheduler`
