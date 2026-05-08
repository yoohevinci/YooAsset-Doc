---
title: Class PackShader
sidebar_label: PackShader
description: "打包着色器"
---
# Class PackShader
打包着色器

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L201)
```csharp title="Declaration"
[DisplayName("打包着色器文件")]
public class PackShader : IBundlePackRule
```
## Methods
### GetPackRuleResult(BundlePackRuleData)
获取打包规则结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L205)
```csharp title="Declaration"
public BundlePackRuleResult GetPackRuleResult(BundlePackRuleData data)
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 打包规则结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundlePackRuleData](../YooAsset.Editor/BundlePackRuleData.md) | *data* | 打包规则数据 |


## Implements

* [YooAsset.Editor.IBundlePackRule](../YooAsset.Editor/IBundlePackRule.md)
