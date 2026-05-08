---
title: Class DisableGroup
sidebar_label: DisableGroup
description: "禁用分组的激活规则"
---
# Class DisableGroup
禁用分组的激活规则

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[DisplayName("禁用分组")]
public class DisableGroup : IGroupActiveRule
```
## Methods
### IsActiveGroup(GroupActiveRuleData)
检查是否激活分组

```csharp title="Declaration"
public bool IsActiveGroup(GroupActiveRuleData data)
```

##### Returns

`System.Boolean`: 如果分组激活返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.GroupActiveRuleData](/docs/3.0.x/api/YooAsset.Editor/GroupActiveRuleData) | *data* | 分组数据 |


## Implements

* [YooAsset.Editor.IGroupActiveRule](/docs/3.0.x/api/YooAsset.Editor/IGroupActiveRule)
