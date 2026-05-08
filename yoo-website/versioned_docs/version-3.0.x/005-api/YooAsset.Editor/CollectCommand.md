---
title: Class CollectCommand
sidebar_label: CollectCommand
description: "资源收集命令"
---
# Class CollectCommand
资源收集命令

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class CollectCommand
```
## Properties
### PackageName
包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### IgnoreRule
忽略规则实例

```csharp title="Declaration"
public IAssetIgnoreRule IgnoreRule { get; }
```
### CollectFlags
窗口收集模式

```csharp title="Declaration"
public ECollectFlags CollectFlags { get; set; }
```
### UniqueBundleName
是否启用资源包名唯一化

```csharp title="Declaration"
public bool UniqueBundleName { get; set; }
```
### UseAssetDependencyDB
是否使用资源依赖数据库

```csharp title="Declaration"
public bool UseAssetDependencyDB { get; set; }
```
### EnableAddressable
是否启用可寻址资源定位

```csharp title="Declaration"
public bool EnableAddressable { get; set; }
```
### SupportExtensionless
是否支持无后缀名的资源定位地址

```csharp title="Declaration"
public bool SupportExtensionless { get; set; }
```
### LocationToLower
资源定位地址大小写不敏感

```csharp title="Declaration"
public bool LocationToLower { get; set; }
```
### IncludeAssetGUID
是否包含资源GUID数据

```csharp title="Declaration"
public bool IncludeAssetGUID { get; set; }
```
### AutoCollectShaders
是否自动收集所有着色器

```csharp title="Declaration"
public bool AutoCollectShaders { get; set; }
```
### AssetDependency
资源依赖缓存

```csharp title="Declaration"
public AssetDependencyCache AssetDependency { get; }
```
## Methods
### SetSimulateBuild(bool)
设置模拟构建模式

```csharp title="Declaration"
public void SetSimulateBuild(bool value)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *value* | 是否为模拟构建 |

### SetFlag(ECollectFlags, bool)
设置标记位

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

```csharp title="Declaration"
public bool IsFlagSet(ECollectFlags flag)
```

##### Returns

`System.Boolean`: 如果标记位已开启返回 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.ECollectFlags](../YooAsset.Editor/ECollectFlags.md) | *flag* | 标记位 |

