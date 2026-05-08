---
title: Class CollectSprite
sidebar_label: CollectSprite
description: "收集精灵纹理的过滤规则"
---
# Class CollectSprite
收集精灵纹理的过滤规则

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L70)
```csharp title="Declaration"
[DisplayName("收集精灵类型的纹理")]
public class CollectSprite : IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L74)
```csharp title="Declaration"
public string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L80)
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
