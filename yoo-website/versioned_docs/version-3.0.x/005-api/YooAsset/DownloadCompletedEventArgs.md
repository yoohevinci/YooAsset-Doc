---
title: Struct DownloadCompletedEventArgs
sidebar_label: DownloadCompletedEventArgs
description: "下载完成事件参数"
---
# Struct DownloadCompletedEventArgs
下载完成事件参数

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L7)
```csharp title="Declaration"
public readonly struct DownloadCompletedEventArgs
```
## Properties
### PackageName
所属包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L12)
```csharp title="Declaration"
public string PackageName { get; }
```
### Succeeded
是否成功
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L17)
```csharp title="Declaration"
public bool Succeeded { get; }
```
### Error
下载失败时的错误信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/DownloaderEventArgs.cs#L22)
```csharp title="Declaration"
public string Error { get; }
```
