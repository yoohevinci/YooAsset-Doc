---
title: Class BundleCollectorPackage
sidebar_label: BundleCollectorPackage
description: "资源收集器包裹"
---
# Class BundleCollectorPackage
资源收集器包裹

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L13)
```csharp title="Declaration"
[Serializable]
public class BundleCollectorPackage
```
## Fields
### PackageName
包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L19)
```csharp title="Declaration"
public string PackageName
```
### PackageDesc
包裹描述
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L24)
```csharp title="Declaration"
public string PackageDesc
```
### EnableAddressable
是否启用可寻址资源定位
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L29)
```csharp title="Declaration"
public bool EnableAddressable
```
### SupportExtensionless
是否支持无后缀名的资源定位地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L34)
```csharp title="Declaration"
public bool SupportExtensionless
```
### LocationToLower
资源定位地址大小写不敏感
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L39)
```csharp title="Declaration"
public bool LocationToLower
```
### IncludeAssetGUID
是否包含资源GUID数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L44)
```csharp title="Declaration"
public bool IncludeAssetGUID
```
### AutoCollectShaders
是否自动收集所有着色器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L50)
```csharp title="Declaration"
public bool AutoCollectShaders
```
### IgnoreRuleName
资源忽略规则名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L55)
```csharp title="Declaration"
public string IgnoreRuleName
```
### Groups
分组列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L60)
```csharp title="Declaration"
public List<BundleCollectorGroup> Groups
```
## Methods
### CheckConfigError()
检测配置错误
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L66)
```csharp title="Declaration"
public void CheckConfigError()
```
### FixConfigError()
修复配置错误
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L88)
```csharp title="Declaration"
public bool FixConfigError()
```

##### Returns

`System.Boolean`: 如果修复了配置错误返回 true### GetCollectAssets(CollectCommand)
获取收集的资源列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L115)
```csharp title="Declaration"
public List<CollectAssetInfo> GetCollectAssets(CollectCommand command)
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.CollectAssetInfo>`: 收集到的资源信息列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |

### GetAllTags()
获取所有的资源标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollectorPackage.cs#L164)
```csharp title="Declaration"
public List<string> GetAllTags()
```

##### Returns

`System.Collections.Generic.List<System.String>`: 所有资源标签列表