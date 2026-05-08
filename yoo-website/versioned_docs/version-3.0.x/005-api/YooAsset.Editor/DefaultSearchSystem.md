---
title: Class DefaultSearchSystem
sidebar_label: DefaultSearchSystem
description: "默认的表格搜索系统，负责解析搜索表达式并执行数据过滤"
---
# Class DefaultSearchSystem
默认的表格搜索系统，负责解析搜索表达式并执行数据过滤

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/DefaultSearchSystem.cs#L12)
```csharp title="Declaration"
public static class DefaultSearchSystem
```
## Methods
### ParseCommand(string)
解析搜索表达式为命令列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/DefaultSearchSystem.cs#L19)
```csharp title="Declaration"
public static IList<ISearchCommand> ParseCommand(string commandContent)
```

##### Returns

`System.Collections.Generic.IList<YooAsset.Editor.ISearchCommand>`: 解析后的搜索命令集合
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *commandContent* | 搜索表达式字符串，支持关键字、比较运算符等语法 |

### Search(IList&lt;ITableData&gt;, string, ESearchLogic)
根据搜索表达式过滤数据源的可见性
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/TableViewer/SearchSystem/DefaultSearchSystem.cs#L149)
```csharp title="Declaration"
public static void Search(IList<ITableData> sourceDatas, string command, ESearchLogic logic)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.IList<YooAsset.Editor.ITableData>` | *sourceDatas* | 待过滤的表格数据集合 |
| `System.String` | *command* | 搜索表达式字符串 |
| [YooAsset.Editor.ESearchLogic](../YooAsset.Editor/ESearchLogic.md) | *logic* | 同类搜索命令的组内组合逻辑 |

