---
title: Class CollectScene
sidebar_label: CollectScene
description: "收集场景文件的过滤规则"
---
# Class CollectScene
收集场景文件的过滤规则

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[DisplayName("收集场景")]
public class CollectScene : IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型

```csharp title="Declaration"
public string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源

```csharp title="Declaration"
public bool IsCollectAsset(AssetFilterRuleData data)
```

##### Returns

`System.Boolean`: 如果收集该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.AssetFilterRuleData](/docs/api/YooAsset.Editor/AssetFilterRuleData) | *data* | 过滤规则数据 |


## Implements

* [YooAsset.Editor.IAssetFilterRule](/docs/api/YooAsset.Editor/IAssetFilterRule)
