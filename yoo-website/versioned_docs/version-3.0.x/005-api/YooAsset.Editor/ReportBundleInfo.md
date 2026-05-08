---
title: Class ReportBundleInfo
sidebar_label: ReportBundleInfo
description: "构建报告中单个资源包的详细信息"
---
# Class ReportBundleInfo
构建报告中单个资源包的详细信息

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L11)
```csharp title="Declaration"
[Serializable]
public class ReportBundleInfo
```
## Fields
### BundleName
资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L17)
```csharp title="Declaration"
public string BundleName
```
### FileName
文件名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L22)
```csharp title="Declaration"
public string FileName
```
### FileHash
文件哈希值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L27)
```csharp title="Declaration"
public string FileHash
```
### FileCrc
文件校验码
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L32)
```csharp title="Declaration"
public uint FileCrc
```
### FileSize
文件大小（字节数）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L37)
```csharp title="Declaration"
public long FileSize
```
### Encrypted
是否为加密文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L42)
```csharp title="Declaration"
public bool Encrypted
```
### Tags
资源包标签集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L47)
```csharp title="Declaration"
public string[] Tags
```
### DependBundles
依赖的资源包集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L53)
```csharp title="Declaration"
public List<string> DependBundles
```
### ReferenceBundles
引用该资源包的资源包集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L59)
```csharp title="Declaration"
public List<string> ReferenceBundles
```
### BundleContents
资源包内部所有资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L64)
```csharp title="Declaration"
public List<EditorAssetInfo> BundleContents
```
## Methods
### GetTagsString()
获取资源分类标签的字符串
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportBundleInfo.cs#L70)
```csharp title="Declaration"
public string GetTagsString()
```

##### Returns

`System.String`: 以分号分隔的标签字符串，无标签时返回空字符串。