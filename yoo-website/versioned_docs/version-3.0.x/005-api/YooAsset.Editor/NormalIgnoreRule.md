---
title: Class NormalIgnoreRule
sidebar_label: NormalIgnoreRule
description: "适配常规的资源构建管线"
---
# Class NormalIgnoreRule
适配常规的资源构建管线

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetIgnoreRule.cs#L30)
```csharp title="Declaration"
public class NormalIgnoreRule : IAssetIgnoreRule
```
## Methods
### IsIgnoreAsset(EditorAssetInfo)
检查是否为忽略文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetIgnoreRule.cs#L33)
```csharp title="Declaration"
public bool IsIgnoreAsset(EditorAssetInfo assetInfo)
```

##### Returns

`System.Boolean`: 如果忽略该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EditorAssetInfo](../YooAsset.Editor/EditorAssetInfo.md) | *assetInfo* | 资源信息 |


## Implements

* [YooAsset.Editor.IAssetIgnoreRule](../YooAsset.Editor/IAssetIgnoreRule.md)
