---
title: Struct ResourceUnpackerOptions
sidebar_label: ResourceUnpackerOptions
description: "资源解压的操作选项"
---
# Struct ResourceUnpackerOptions
资源解压的操作选项

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L124)
```csharp title="Declaration"
public readonly struct ResourceUnpackerOptions
```
## Properties
### MaximumConcurrency
最大并发数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L129)
```csharp title="Declaration"
public int MaximumConcurrency { get; }
```
### RetryCount
失败后的重试次数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L134)
```csharp title="Declaration"
public int RetryCount { get; }
```
### Tags
资源标签列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderOptions.cs#L140)
```csharp title="Declaration"
public string[] Tags { get; }
```
