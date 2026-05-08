---
title: Class AssetDependencyCache
sidebar_label: AssetDependencyCache
description: "资源依赖关系缓存"
---
# Class AssetDependencyCache
资源依赖关系缓存

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/AssetDependencyCache.cs#L14)
```csharp title="Declaration"
public class AssetDependencyCache
```
## Methods
### GetDependencies(string, bool)
获取资源的依赖列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/AssetDependencyCache.cs#L43)
```csharp title="Declaration"
public string[] GetDependencies(string assetPath, bool recursive = true)
```

##### Returns

`System.String[]`: 返回依赖的资源路径集合
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | 资源路径 |
| `System.Boolean` | *recursive* | 递归查找所有依赖 |

