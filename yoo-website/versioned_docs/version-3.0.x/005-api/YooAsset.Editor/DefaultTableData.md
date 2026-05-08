---
title: Class DefaultTableData
sidebar_label: DefaultTableData
description: "表格行数据抽象的默认实现，提供便捷的单元格添加方法"
---
# Class DefaultTableData
表格行数据抽象的默认实现，提供便捷的单元格添加方法

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class DefaultTableData : ITableData
```
## Properties
### Visible
是否可见

```csharp title="Declaration"
public bool Visible { get; set; }
```
### Cells
单元格集合

```csharp title="Declaration"
public IList<ITableCell> Cells { get; }
```
## Methods
### AddCell(ITableCell)
添加自定义单元格

```csharp title="Declaration"
public void AddCell(ITableCell cell)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.ITableCell](../YooAsset.Editor/ITableCell.md) | *cell* | 要添加的单元格实例 |

### AddButtonCell(string)
添加按钮单元格

```csharp title="Declaration"
public void AddButtonCell(string searchTag)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |

### AddAssetPathCell(string, string)
添加资源路径单元格

```csharp title="Declaration"
public void AddAssetPathCell(string searchTag, string assetPath)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.String` | *assetPath* | 资源在项目中的路径 |

### AddAssetObjectCell(string, string)
添加资源对象单元格

```csharp title="Declaration"
public void AddAssetObjectCell(string searchTag, string assetPath)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.String` | *assetPath* | 资源在项目中的路径 |

### AddStringValueCell(string, string)
添加字符串单元格

```csharp title="Declaration"
public void AddStringValueCell(string searchTag, string value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.String` | *value* | 字符串值 |

### AddLongValueCell(string, long)
添加长整数单元格

```csharp title="Declaration"
public void AddLongValueCell(string searchTag, long value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.Int64` | *value* | 长整数值 |

### AddDoubleValueCell(string, double)
添加双精度浮点单元格

```csharp title="Declaration"
public void AddDoubleValueCell(string searchTag, double value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.Double` | *value* | 双精度浮点值 |

### AddBoolValueCell(string, bool)
添加布尔单元格

```csharp title="Declaration"
public void AddBoolValueCell(string searchTag, bool value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *searchTag* | 用于搜索匹配的标签标识 |
| `System.Boolean` | *value* | 布尔值 |


## Implements

* [YooAsset.Editor.ITableData](../YooAsset.Editor/ITableData.md)
