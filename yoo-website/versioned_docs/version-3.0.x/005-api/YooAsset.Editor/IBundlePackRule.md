---
title: Interface IBundlePackRule
sidebar_label: IBundlePackRule
description: "资源打包规则接口"
---
# Interface IBundlePackRule
资源打包规则接口

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L111)
```csharp title="Declaration"
public interface IBundlePackRule
```
## Methods
### GetPackRuleResult(BundlePackRuleData)
获取打包规则结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L118)
```csharp title="Declaration"
BundlePackRuleResult GetPackRuleResult(BundlePackRuleData data)
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 打包规则结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundlePackRuleData](../YooAsset.Editor/BundlePackRuleData.md) | *data* | 打包规则数据 |

