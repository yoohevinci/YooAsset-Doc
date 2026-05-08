---
title: Class RawFileIgnoreRule
sidebar_label: RawFileIgnoreRule
description: "适配原生文件构建管线"
---
# Class RawFileIgnoreRule
适配原生文件构建管线

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class RawFileIgnoreRule : IAssetIgnoreRule
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
| [YooAsset.Editor.EditorAssetInfo](/docs/api/YooAsset.Editor/EditorAssetInfo) | *assetInfo* | 资源信息 |


## Implements

* [YooAsset.Editor.IAssetIgnoreRule](/docs/api/YooAsset.Editor/IAssetIgnoreRule)
