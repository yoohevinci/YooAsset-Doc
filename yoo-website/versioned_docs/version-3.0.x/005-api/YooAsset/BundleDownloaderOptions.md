---
title: Struct BundleDownloaderOptions
sidebar_label: BundleDownloaderOptions
description: "按资源信息创建下载器的操作选项"
---
# Struct BundleDownloaderOptions
按资源信息创建下载器的操作选项

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L7)
```csharp title="Declaration"
public readonly struct BundleDownloaderOptions
```
## Properties
### MaximumConcurrency
最大并发数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L12)
```csharp title="Declaration"
public int MaximumConcurrency { get; }
```
### RetryCount
失败后的重试次数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L17)
```csharp title="Declaration"
public int RetryCount { get; }
```
### DownloadBundleDependencies
下载资源对象所属资源包内所有资源对象依赖的资源包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L22)
```csharp title="Declaration"
public bool DownloadBundleDependencies { get; }
```
### AssetInfos
资源信息列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L28)
```csharp title="Declaration"
public AssetInfo[] AssetInfos { get; }
```
