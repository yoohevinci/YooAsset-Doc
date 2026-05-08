---
title: Class BuildMapContext
sidebar_label: BuildMapContext
description: "构建资源映射上下文，管理构建过程中所有资源包和资源的映射关系"
---
# Class BuildMapContext
构建资源映射上下文，管理构建过程中所有资源包和资源的映射关系

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class BuildMapContext
```
## Properties
### AssetFileCount
参与构建的资源总数

```csharp title="Declaration"
public int AssetFileCount { get; set; }
```
### Command
资源收集命令

```csharp title="Declaration"
public CollectCommand Command { get; set; }
```
### Collection
资源包信息列表

```csharp title="Declaration"
public Dictionary<string, BuildBundleInfo>.ValueCollection Collection { get; }
```
### SpriteAtlasAssetList
图集资源集合

```csharp title="Declaration"
public IReadOnlyList<BuildAssetInfo> SpriteAtlasAssetList { get; }
```
### IndependentAssets
未被依赖的资源列表

```csharp title="Declaration"
public IReadOnlyList<ReportIndependentAsset> IndependentAssets { get; }
```
## Methods
### PackAsset(BuildAssetInfo)
添加一个打包资源

```csharp title="Declaration"
public void PackAsset(BuildAssetInfo assetInfo)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildAssetInfo](/docs/3.0.x/api/YooAsset.Editor/BuildAssetInfo) | *assetInfo* | 待打包的资源信息 |

### IsContainsBundle(string)
检查是否包含指定名称的资源包

```csharp title="Declaration"
public bool IsContainsBundle(string bundleName)
```

##### Returns

`System.Boolean`: 包含返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

### GetBundleInfo(string)
获取资源包信息

```csharp title="Declaration"
public BuildBundleInfo GetBundleInfo(string bundleName)
```

##### Returns

[YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo): 对应的资源包构建信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

### GetPipelineBuilds(bool)
获取构建管线里需要的数据

```csharp title="Declaration"
public AssetBundleBuild[] GetPipelineBuilds(bool replaceAssetPathWithAddress)
```

##### Returns

`UnityEditor.AssetBundleBuild[]`: 所有资源包的 AssetBundleBuild 数据数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *replaceAssetPathWithAddress* | 是否使用可寻址地址替代资源路径 |

### CreateEmptyBundleInfo(string)
创建空的资源包

```csharp title="Declaration"
public void CreateEmptyBundleInfo(string bundleName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

