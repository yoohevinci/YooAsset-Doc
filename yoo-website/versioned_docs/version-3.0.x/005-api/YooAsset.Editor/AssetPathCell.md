---
title: Class AssetPathCell
sidebar_label: AssetPathCell
description: "资源路径类型的表格单元格"
---
# Class AssetPathCell
资源路径类型的表格单元格

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class AssetPathCell : StringValueCell, ITableCell, IComparable
```
## Methods
### PingAssetObject()
在 Project 窗口中定位并高亮资源对象

```csharp title="Declaration"
public bool PingAssetObject()
```

##### Returns

`System.Boolean`: 定位成功返回 true；资源不存在时返回 false。
## Implements

* [YooAsset.Editor.ITableCell](/docs/api/YooAsset.Editor/ITableCell)
* `System.IComparable`
