---
title: Struct DownloadProgressChangedEventArgs
sidebar_label: DownloadProgressChangedEventArgs
description: "下载进度更新事件参数"
---
# Struct DownloadProgressChangedEventArgs
下载进度更新事件参数

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L63)
```csharp title="Declaration"
public readonly struct DownloadProgressChangedEventArgs
```
## Properties
### PackageName
所属包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L68)
```csharp title="Declaration"
public string PackageName { get; }
```
### Progress
下载进度 (0-1f)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L73)
```csharp title="Declaration"
public float Progress { get; }
```
### TotalDownloadCount
下载文件总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L78)
```csharp title="Declaration"
public int TotalDownloadCount { get; }
```
### TotalDownloadBytes
下载数据总大小（单位：字节）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L83)
```csharp title="Declaration"
public long TotalDownloadBytes { get; }
```
### CurrentDownloadCount
当前完成的下载文件数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L88)
```csharp title="Declaration"
public int CurrentDownloadCount { get; }
```
### CurrentDownloadBytes
当前完成的下载数据大小（单位：字节）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L93)
```csharp title="Declaration"
public long CurrentDownloadBytes { get; }
```
