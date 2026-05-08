---
title: Interface IAssetIgnoreRule
sidebar_label: IAssetIgnoreRule
description: "资源忽略规则接口"
---
# Interface IAssetIgnoreRule
资源忽略规则接口

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public interface IAssetIgnoreRule
```
## Methods
### IsIgnoreAsset(EditorAssetInfo)
检查是否为忽略文件

```csharp title="Declaration"
bool IsIgnoreAsset(EditorAssetInfo assetInfo)
```

##### Returns

`System.Boolean`: 如果忽略该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EditorAssetInfo](../YooAsset.Editor/EditorAssetInfo.md) | *assetInfo* | 资源信息 |

