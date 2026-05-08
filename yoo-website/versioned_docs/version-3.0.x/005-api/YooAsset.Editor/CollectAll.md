---
title: Class CollectAll
sidebar_label: CollectAll
description: "收集所有资源的过滤规则"
---
# Class CollectAll
收集所有资源的过滤规则

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L12)
```csharp title="Declaration"
[DisplayName("收集所有资源")]
public class CollectAll : IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L16)
```csharp title="Declaration"
public string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L22)
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
