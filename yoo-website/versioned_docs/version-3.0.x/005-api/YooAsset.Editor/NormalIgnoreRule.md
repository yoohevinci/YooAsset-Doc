---
title: Class NormalIgnoreRule
sidebar_label: NormalIgnoreRule
description: "适配常规的资源构建管线"
---
# Class NormalIgnoreRule
适配常规的资源构建管线

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class NormalIgnoreRule : IAssetIgnoreRule
```
## Methods
### IsIgnoreAsset(EditorAssetInfo)
检查是否为忽略文件

```csharp title="Declaration"
public bool IsIgnoreAsset(EditorAssetInfo assetInfo)
```

##### Returns

`System.Boolean`: 如果忽略该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EditorAssetInfo](/docs/3.0.x/api/YooAsset.Editor/EditorAssetInfo) | *assetInfo* | 资源信息 |


## Implements

* [YooAsset.Editor.IAssetIgnoreRule](/docs/3.0.x/api/YooAsset.Editor/IAssetIgnoreRule)
