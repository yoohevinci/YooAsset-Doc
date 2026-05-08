---
title: Class BuildAssetInfo
sidebar_label: BuildAssetInfo
description: "构建资源信息，记录单个资源在构建过程中的元数据"
---
# Class BuildAssetInfo
构建资源信息，记录单个资源在构建过程中的元数据

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L11)
```csharp title="Declaration"
public class BuildAssetInfo
```
## Properties
### CollectorType
收集器类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L20)
```csharp title="Declaration"
public ECollectorType CollectorType { get; }
```
### BundleName
资源包完整名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L25)
```csharp title="Declaration"
public string BundleName { get; }
```
### Address
可寻址地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L30)
```csharp title="Declaration"
public string Address { get; }
```
### AssetInfo
资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L35)
```csharp title="Declaration"
public EditorAssetInfo AssetInfo { get; }
```
### AssetTags
资源的分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L40)
```csharp title="Declaration"
public IReadOnlyList<string> AssetTags { get; }
```
### AllDependAssetInfos
依赖的所有资源
注意：包括零依赖资源和冗余资源（资源包名无效）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L49)
```csharp title="Declaration"
public List<BuildAssetInfo> AllDependAssetInfos { get; }
```
## Methods
### SetDependAssetInfos(List&lt;BuildAssetInfo&gt;)
设置所有依赖的资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L83)
```csharp title="Declaration"
public void SetDependAssetInfos(List<BuildAssetInfo> dependAssetInfos)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.List<YooAsset.Editor.BuildAssetInfo>` | *dependAssetInfos* | 依赖资源信息列表 |

### SetBundleName(string)
设置资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L95)
```csharp title="Declaration"
public void SetBundleName(string bundleName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包完整名称 |

### AddAssetTags(List&lt;string&gt;)
添加资源的分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L108)
```csharp title="Declaration"
public void AddAssetTags(List<string> tags)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.List<System.String>` | *tags* | 资源分类标签列表 |

### AddReferenceBundleName(string)
添加关联的资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L127)
```csharp title="Declaration"
public void AddReferenceBundleName(string bundleName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 引用该资源的资源包名称 |

### HasBundleName()
检查是否已分配资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L140)
```csharp title="Declaration"
public bool HasBundleName()
```

##### Returns

`System.Boolean`: 已分配返回 true，否则返回 false### GetReferenceBundleCount()
获取关联资源包的数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildAssetInfo.cs#L152)
```csharp title="Declaration"
public int GetReferenceBundleCount()
```

##### Returns

`System.Int32`: 引用该资源的资源包数量