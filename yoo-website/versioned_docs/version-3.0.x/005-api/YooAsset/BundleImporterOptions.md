---
title: Struct BundleImporterOptions
sidebar_label: BundleImporterOptions
description: "资源导入的操作选项"
---
# Struct BundleImporterOptions
资源导入的操作选项

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L184)
```csharp title="Declaration"
public readonly struct BundleImporterOptions
```
## Properties
### MaximumConcurrency
最大并发数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L189)
```csharp title="Declaration"
public int MaximumConcurrency { get; }
```
### RetryCount
失败后的重试次数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L194)
```csharp title="Declaration"
public int RetryCount { get; }
```
### BundleInfos
资源包信息列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L199)
```csharp title="Declaration"
public ImportBundleInfo[] BundleInfos { get; }
```
