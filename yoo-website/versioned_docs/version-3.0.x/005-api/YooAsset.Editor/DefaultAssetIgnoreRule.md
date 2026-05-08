---
title: Class DefaultAssetIgnoreRule
sidebar_label: DefaultAssetIgnoreRule
description: "默认忽略规则的工具类"
---
# Class DefaultAssetIgnoreRule
默认忽略规则的工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetIgnoreRule.cs#L11)
```csharp title="Declaration"
public class DefaultAssetIgnoreRule
```
## Methods
### IsIgnoreFileExtension(string)
查询文件扩展名是否在忽略列表中
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetIgnoreRule.cs#L21)
```csharp title="Declaration"
public static bool IsIgnoreFileExtension(string extension)
```

##### Returns

`System.Boolean`: 如果在忽略列表中返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *extension* | 文件扩展名 |

