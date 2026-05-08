---
title: Class SearchCompare
sidebar_label: SearchCompare
description: "指定标题的数值比较搜索命令"
---
# Class SearchCompare
指定标题的数值比较搜索命令

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L9)
```csharp title="Declaration"
public class SearchCompare : ISearchCommand
```
## Properties
### SearchTag
搜索标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L12)
```csharp title="Declaration"
public string SearchTag { get; }
```
### HeaderTitle
目标列的标题名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L17)
```csharp title="Declaration"
public string HeaderTitle { get; set; }
```
### CompareValue
用于比较的数值字符串
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L22)
```csharp title="Declaration"
public string CompareValue { get; set; }
```
### CompareOperator
比较运算符，支持大于、大于等于、小于、小于等于、等于、不等于
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L27)
```csharp title="Declaration"
public string CompareOperator { get; set; }
```
## Methods
### CompareTo(long)
将整数值与目标进行比较
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L68)
```csharp title="Declaration"
public bool CompareTo(long value)
```

##### Returns

`System.Boolean`: 满足比较条件时返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int64` | *value* | 待比较的整数值 |

### CompareTo(double)
将浮点数值与目标进行比较
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/SearchCompare.cs#L95)
```csharp title="Declaration"
public bool CompareTo(double value)
```

##### Returns

`System.Boolean`: 满足比较条件时返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Double` | *value* | 待比较的浮点数值 |


## Implements

* [YooAsset.Editor.ISearchCommand](../YooAsset.Editor/ISearchCommand.md)
