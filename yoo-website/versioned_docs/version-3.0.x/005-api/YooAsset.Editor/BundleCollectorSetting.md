---
title: Class BundleCollectorSetting
sidebar_label: BundleCollectorSetting
description: "资源收集器配置文件"
---
# Class BundleCollectorSetting
资源收集器配置文件

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[CreateAssetMenu(fileName = "BundleCollectorSetting", menuName = "YooAsset/Create Bundle Collector Settings")]
public class BundleCollectorSetting : ScriptableObject
```
## Fields
### ShowPackageView
是否显示包裹列表视图

```csharp title="Declaration"
public bool ShowPackageView
```
### ShowEditorAlias
是否显示编辑器别名

```csharp title="Declaration"
public bool ShowEditorAlias
```
### UniqueBundleName
是否启用资源包名唯一化

```csharp title="Declaration"
public bool UniqueBundleName
```
### Packages
包裹列表

```csharp title="Declaration"
public List<BundleCollectorPackage> Packages
```
## Methods
### ClearAll()
清空所有数据

```csharp title="Declaration"
public void ClearAll()
```
### CheckPackageConfigError(string)
检测包裹配置错误

```csharp title="Declaration"
public void CheckPackageConfigError(string packageName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### CheckAllPackageConfigError()
检测所有配置错误

```csharp title="Declaration"
public void CheckAllPackageConfigError()
```
### FixAllPackageConfigError()
修复所有配置错误

```csharp title="Declaration"
public bool FixAllPackageConfigError()
```

##### Returns

`System.Boolean`: 如果修复了配置错误返回 true### GetPackageAllTags(string)
获取所有的资源标签

```csharp title="Declaration"
public List<string> GetPackageAllTags(string packageName)
```

##### Returns

`System.Collections.Generic.List<System.String>`: 指定包裹的所有资源标签
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### BeginCollect(string, bool, bool)
收集指定包裹的资源文件

```csharp title="Declaration"
public CollectResult BeginCollect(string packageName, bool simulateBuild, bool useAssetDependencyDB)
```

##### Returns

[YooAsset.Editor.CollectResult](/docs/3.0.x/api/YooAsset.Editor/CollectResult): 资源收集结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.Boolean` | *simulateBuild* | 是否模拟构建 |
| `System.Boolean` | *useAssetDependencyDB* | 是否使用资源依赖数据库 |

### GetPackage(string)
获取指定名称的收集器包裹

```csharp title="Declaration"
public BundleCollectorPackage GetPackage(string packageName)
```

##### Returns

[YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage): 包裹对象
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

