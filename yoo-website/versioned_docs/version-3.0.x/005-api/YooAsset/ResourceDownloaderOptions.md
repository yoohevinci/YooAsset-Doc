---
title: Struct ResourceDownloaderOptions
sidebar_label: ResourceDownloaderOptions
description: "按资源标签创建下载器的操作选项"
---
# Struct ResourceDownloaderOptions
按资源标签创建下载器的操作选项

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L64)
```csharp title="Declaration"
public readonly struct ResourceDownloaderOptions
```
## Properties
### MaximumConcurrency
最大并发数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L69)
```csharp title="Declaration"
public int MaximumConcurrency { get; }
```
### RetryCount
失败后的重试次数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L74)
```csharp title="Declaration"
public int RetryCount { get; }
```
### Tags
资源标签列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L80)
```csharp title="Declaration"
public string[] Tags { get; }
```
