---
title: Class SearchKeyword
sidebar_label: SearchKeyword
description: "搜索关键字命令，按字符串包含关系进行匹配"
---
# Class SearchKeyword
搜索关键字命令，按字符串包含关系进行匹配

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class SearchKeyword : ISearchCommand
```
## Properties
### SearchTag
搜索标签

```csharp title="Declaration"
public string SearchTag { get; set; }
```
### Keyword
待匹配的关键字

```csharp title="Declaration"
public string Keyword { get; set; }
```
## Methods
### CompareTo(string)
检查是否包含关键字

```csharp title="Declaration"
public bool CompareTo(string value)
```

##### Returns

`System.Boolean`: 包含关键字时返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *value* | 待比较的字符串 |


## Implements

* [YooAsset.Editor.ISearchCommand](/docs/3.0.x/api/YooAsset.Editor/ISearchCommand)
