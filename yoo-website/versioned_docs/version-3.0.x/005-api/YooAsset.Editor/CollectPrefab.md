---
title: Class CollectPrefab
sidebar_label: CollectPrefab
description: "收集预制体的过滤规则"
---
# Class CollectPrefab
收集预制体的过滤规则

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[DisplayName("收集预制体")]
public class CollectPrefab : IAssetFilterRule
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
| [YooAsset.Editor.AssetFilterRuleData](../YooAsset.Editor/AssetFilterRuleData.md) | *data* | 过滤规则数据 |


## Implements

* [YooAsset.Editor.IAssetFilterRule](../YooAsset.Editor/IAssetFilterRule.md)
