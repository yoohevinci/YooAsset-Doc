---
title: Class ReportAssetInfo
sidebar_label: ReportAssetInfo
description: "构建报告中单个资源的详细信息"
---
# Class ReportAssetInfo
构建报告中单个资源的详细信息

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L10)
```csharp title="Declaration"
[Serializable]
public class ReportAssetInfo
```
## Fields
### Address
可寻址地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L16)
```csharp title="Declaration"
public string Address
```
### AssetPath
资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L21)
```csharp title="Declaration"
public string AssetPath
```
### AssetGuid
资源 GUID
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L27)
```csharp title="Declaration"
public string AssetGuid
```
### AssetTags
资源的分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L32)
```csharp title="Declaration"
public string[] AssetTags
```
### MainBundleName
所属资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L37)
```csharp title="Declaration"
public string MainBundleName
```
### MainBundleSize
所属资源包的大小
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L42)
```csharp title="Declaration"
public long MainBundleSize
```
### DependAssets
依赖的资源集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L47)
```csharp title="Declaration"
public List<EditorAssetInfo> DependAssets
```
### DependBundles
依赖的资源包集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportAssetInfo.cs#L53)
```csharp title="Declaration"
public List<string> DependBundles
```
