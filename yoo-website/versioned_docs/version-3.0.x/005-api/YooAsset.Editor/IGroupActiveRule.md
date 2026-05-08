---
title: Interface IGroupActiveRule
sidebar_label: IGroupActiveRule
description: "资源分组激活规则接口"
---
# Interface IGroupActiveRule
资源分组激活规则接口

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public interface IGroupActiveRule
```
## Methods
### IsActiveGroup(GroupActiveRuleData)
检查是否激活分组

```csharp title="Declaration"
bool IsActiveGroup(GroupActiveRuleData data)
```

##### Returns

`System.Boolean`: 如果分组激活返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.GroupActiveRuleData](/docs/3.0.x/api/YooAsset.Editor/GroupActiveRuleData) | *data* | 分组数据 |

