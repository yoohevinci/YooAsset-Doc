---
title: Class CollectAssetInfo
sidebar_label: CollectAssetInfo
description: "收集的资源信息"
---
# Class CollectAssetInfo
收集的资源信息

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L9)
```csharp title="Declaration"
public class CollectAssetInfo
```
## Properties
### CollectorType
收集器类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L14)
```csharp title="Declaration"
public ECollectorType CollectorType { get; }
```
### BundleName
资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L19)
```csharp title="Declaration"
public string BundleName { get; }
```
### Address
可寻址地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L24)
```csharp title="Declaration"
public string Address { get; }
```
### AssetInfo
资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L29)
```csharp title="Declaration"
public EditorAssetInfo AssetInfo { get; }
```
### AssetTags
资源分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L34)
```csharp title="Declaration"
public List<string> AssetTags { get; }
```
### DependAssets
依赖的资源列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectAssetInfo.cs#L39)
```csharp title="Declaration"
public List<EditorAssetInfo> DependAssets { get; set; }
```
