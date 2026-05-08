---
title: Class BuildMapContext
sidebar_label: BuildMapContext
description: "构建资源映射上下文，管理构建过程中所有资源包和资源的映射关系"
---
# Class BuildMapContext
构建资源映射上下文，管理构建过程中所有资源包和资源的映射关系

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L12)
```csharp title="Declaration"
public class BuildMapContext
```
## Properties
### AssetFileCount
参与构建的资源总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L25)
```csharp title="Declaration"
public int AssetFileCount { get; set; }
```
### Command
资源收集命令
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L30)
```csharp title="Declaration"
public CollectCommand Command { get; set; }
```
### Collection
资源包信息列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L35)
```csharp title="Declaration"
public Dictionary<string, BuildBundleInfo>.ValueCollection Collection { get; }
```
### SpriteAtlasAssetList
图集资源集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L46)
```csharp title="Declaration"
public IReadOnlyList<BuildAssetInfo> SpriteAtlasAssetList { get; }
```
### IndependentAssets
未被依赖的资源列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L54)
```csharp title="Declaration"
public IReadOnlyList<ReportIndependentAsset> IndependentAssets { get; }
```
## Methods
### PackAsset(BuildAssetInfo)
添加一个打包资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L72)
```csharp title="Declaration"
public void PackAsset(BuildAssetInfo assetInfo)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildAssetInfo](../YooAsset.Editor/BuildAssetInfo.md) | *assetInfo* | 待打包的资源信息 |

### IsContainsBundle(string)
检查是否包含指定名称的资源包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L101)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L111)
```csharp title="Declaration"
public BuildBundleInfo GetBundleInfo(string bundleName)
```

##### Returns

[YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md): 对应的资源包构建信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

### GetPipelineBuilds(bool)
获取构建管线里需要的数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L125)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildMapContext.cs#L139)
```csharp title="Declaration"
public void CreateEmptyBundleInfo(string bundleName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

