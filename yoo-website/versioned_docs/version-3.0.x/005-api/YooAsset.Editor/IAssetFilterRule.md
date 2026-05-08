---
title: Interface IAssetFilterRule
sidebar_label: IAssetFilterRule
description: "资源过滤规则接口"
---
# Interface IAssetFilterRule
资源过滤规则接口

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IAssetFilterRule.cs#L48)
```csharp title="Declaration"
public interface IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IAssetFilterRule.cs#L54)
```csharp title="Declaration"
string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IAssetFilterRule.cs#L61)
```csharp title="Declaration"
bool IsCollectAsset(AssetFilterRuleData data)
```

##### Returns

`System.Boolean`: 如果收集该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.AssetFilterRuleData](../YooAsset.Editor/AssetFilterRuleData.md) | *data* | 过滤规则数据 |

