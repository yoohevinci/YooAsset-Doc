---
title: Interface IAssetFilterRule
sidebar_label: IAssetFilterRule
description: "资源过滤规则接口"
---
# Interface IAssetFilterRule
资源过滤规则接口

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public interface IAssetFilterRule
```
## Properties
### FindAssetType
搜寻的资源类型

```csharp title="Declaration"
string FindAssetType { get; }
```
## Methods
### IsCollectAsset(AssetFilterRuleData)
检查是否为收集资源

```csharp title="Declaration"
bool IsCollectAsset(AssetFilterRuleData data)
```

##### Returns

`System.Boolean`: 如果收集该资源返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.AssetFilterRuleData](/docs/api/YooAsset.Editor/AssetFilterRuleData) | *data* | 过滤规则数据 |

