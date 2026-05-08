---
title: Interface IAddressRule
sidebar_label: IAddressRule
description: "寻址规则接口"
---
# Interface IAddressRule
寻址规则接口

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IAddressRule.cs#L48)
```csharp title="Declaration"
public interface IAddressRule
```
## Methods
### GetAssetAddress(AddressRuleData)
获取资源的寻址地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IAddressRule.cs#L55)
```csharp title="Declaration"
string GetAssetAddress(AddressRuleData data)
```

##### Returns

`System.String`: 资源的寻址地址
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.AddressRuleData](../YooAsset.Editor/AddressRuleData.md) | *data* | 寻址规则数据 |

