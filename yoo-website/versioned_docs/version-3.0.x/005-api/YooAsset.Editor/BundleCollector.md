---
title: Class BundleCollector
sidebar_label: BundleCollector
description: "资源收集器"
---
# Class BundleCollector
资源收集器

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[Serializable]
public class BundleCollector
```
## Fields
### CollectPath
收集路径

```csharp title="Declaration"
public string CollectPath
```
### CollectorGUID
收集器的GUID

```csharp title="Declaration"
public string CollectorGUID
```
### CollectorType
收集器类型

```csharp title="Declaration"
public ECollectorType CollectorType
```
### AddressRuleName
寻址规则类名

```csharp title="Declaration"
public string AddressRuleName
```
### PackRuleName
打包规则类名

```csharp title="Declaration"
public string PackRuleName
```
### FilterRuleName
过滤规则类名

```csharp title="Declaration"
public string FilterRuleName
```
### AssetTags
资源分类标签

```csharp title="Declaration"
public string AssetTags
```
### UserData
用户自定义数据

```csharp title="Declaration"
public string UserData
```
## Methods
### IsValid()
收集器是否有效

```csharp title="Declaration"
public bool IsValid()
```

##### Returns

`System.Boolean`: 如果收集器配置有效返回 true### CheckConfigError()
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

`System.Boolean`: 如果修复了配置错误返回 true### GetAllCollectAssets(CollectCommand, BundleCollectorGroup)
获取打包收集的资源文件

```csharp title="Declaration"
public List<CollectAssetInfo> GetAllCollectAssets(CollectCommand command, BundleCollectorGroup group)
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.CollectAssetInfo>`: 收集到的资源信息列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.CollectCommand](/docs/api/YooAsset.Editor/CollectCommand) | *command* | 收集命令 |
| [YooAsset.Editor.BundleCollectorGroup](/docs/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 所属分组 |

