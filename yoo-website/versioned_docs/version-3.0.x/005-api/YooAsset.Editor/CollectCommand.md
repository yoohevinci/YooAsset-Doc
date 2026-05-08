---
title: Class CollectCommand
sidebar_label: CollectCommand
description: "资源收集命令"
---
# Class CollectCommand
资源收集命令

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L34)
```csharp title="Declaration"
public class CollectCommand
```
## Properties
### PackageName
包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L41)
```csharp title="Declaration"
public string PackageName { get; }
```
### IgnoreRule
忽略规则实例
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L46)
```csharp title="Declaration"
public IAssetIgnoreRule IgnoreRule { get; }
```
### CollectFlags
窗口收集模式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L63)
```csharp title="Declaration"
public ECollectFlags CollectFlags { get; set; }
```
### UniqueBundleName
是否启用资源包名唯一化
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L68)
```csharp title="Declaration"
public bool UniqueBundleName { get; set; }
```
### UseAssetDependencyDB
是否使用资源依赖数据库
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L73)
```csharp title="Declaration"
public bool UseAssetDependencyDB { get; set; }
```
### EnableAddressable
是否启用可寻址资源定位
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L78)
```csharp title="Declaration"
public bool EnableAddressable { get; set; }
```
### SupportExtensionless
是否支持无后缀名的资源定位地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L83)
```csharp title="Declaration"
public bool SupportExtensionless { get; set; }
```
### LocationToLower
资源定位地址大小写不敏感
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L88)
```csharp title="Declaration"
public bool LocationToLower { get; set; }
```
### IncludeAssetGUID
是否包含资源GUID数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L93)
```csharp title="Declaration"
public bool IncludeAssetGUID { get; set; }
```
### AutoCollectShaders
是否自动收集所有着色器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L98)
```csharp title="Declaration"
public bool AutoCollectShaders { get; set; }
```
### AssetDependency
资源依赖缓存
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L103)
```csharp title="Declaration"
public AssetDependencyCache AssetDependency { get; }
```
## Methods
### SetSimulateBuild(bool)
设置模拟构建模式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L53)
```csharp title="Declaration"
public void SetSimulateBuild(bool value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *value* | 是否为模拟构建 |

### SetFlag(ECollectFlags, bool)
设置标记位
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L129)
```csharp title="Declaration"
public void SetFlag(ECollectFlags flag, bool isOn)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.ECollectFlags](../YooAsset.Editor/ECollectFlags.md) | *flag* | 标记位 |
| `System.Boolean` | *isOn* | 是否开启 |

### IsFlagSet(ECollectFlags)
查询标记位
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L142)
```csharp title="Declaration"
public bool IsFlagSet(ECollectFlags flag)
```

##### Returns

`System.Boolean`: 如果标记位已开启返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.ECollectFlags](../YooAsset.Editor/ECollectFlags.md) | *flag* | 标记位 |

