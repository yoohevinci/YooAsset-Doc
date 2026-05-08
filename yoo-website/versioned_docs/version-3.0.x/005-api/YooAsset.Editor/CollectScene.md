---
title: Class CollectScene
sidebar_label: CollectScene
description: "收集场景文件的过滤规则"
---
# Class CollectScene
收集场景文件的过滤规则

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L31)
```csharp title="Declaration"
[DisplayName("收集场景")]
public class CollectScene : IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L35)
```csharp title="Declaration"
public string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultAssetFilterRule.cs#L41)
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
