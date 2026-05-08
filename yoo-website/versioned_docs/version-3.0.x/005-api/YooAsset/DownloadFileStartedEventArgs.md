---
title: Struct DownloadFileStartedEventArgs
sidebar_label: DownloadFileStartedEventArgs
description: "开始下载单个文件事件参数"
---
# Struct DownloadFileStartedEventArgs
开始下载单个文件事件参数

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct DownloadFileStartedEventArgs
```
## Properties
### PackageName
所属包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### BundleName
资源包名称

```csharp title="Declaration"
public string BundleName { get; }
```
### FileName
文件名称

```csharp title="Declaration"
public string FileName { get; }
```
### FileSize
文件大小

```csharp title="Declaration"
public long FileSize { get; }
```
