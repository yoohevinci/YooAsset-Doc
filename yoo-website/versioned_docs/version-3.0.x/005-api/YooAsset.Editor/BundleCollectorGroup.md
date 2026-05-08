---
title: Class BundleCollectorGroup
sidebar_label: BundleCollectorGroup
description: "资源收集器分组"
---
# Class BundleCollectorGroup
资源收集器分组

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[Serializable]
public class BundleCollectorGroup
```
## Fields
### GroupName
分组名称

```csharp title="Declaration"
public string GroupName
```
### GroupDesc
分组描述

```csharp title="Declaration"
public string GroupDesc
```
### AssetTags
资源分类标签

```csharp title="Declaration"
public string AssetTags
```
### ActiveRuleName
分组激活规则

```csharp title="Declaration"
public string ActiveRuleName
```
### Collectors
分组的收集器列表

```csharp title="Declaration"
public List<BundleCollector> Collectors
```
## Methods
### CheckConfigError()
检测配置错误

```csharp title="Declaration"
public void CheckConfigError()
```
### FixConfigError()
修复配置错误

```csharp title="Declaration"
public bool FixConfigError()
```

##### Returns

`System.Boolean`: 如果修复了配置错误返回 true### GetAllCollectAssets(CollectCommand)
获取打包收集的资源文件

```csharp title="Declaration"
public List<CollectAssetInfo> GetAllCollectAssets(CollectCommand command)
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.CollectAssetInfo>`: 收集到的资源信息列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |

