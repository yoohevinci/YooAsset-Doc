---
title: Struct DownloadProgressChangedEventArgs
sidebar_label: DownloadProgressChangedEventArgs
description: "下载进度更新事件参数"
---
# Struct DownloadProgressChangedEventArgs
下载进度更新事件参数

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct DownloadProgressChangedEventArgs
```
## Properties
### PackageName
所属包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### Progress
下载进度 (0-1f)

```csharp title="Declaration"
public float Progress { get; }
```
### TotalDownloadCount
下载文件总数

```csharp title="Declaration"
public int TotalDownloadCount { get; }
```
### TotalDownloadBytes
下载数据总大小（单位：字节）

```csharp title="Declaration"
public long TotalDownloadBytes { get; }
```
### CurrentDownloadCount
当前完成的下载文件数量

```csharp title="Declaration"
public int CurrentDownloadCount { get; }
```
### CurrentDownloadBytes
当前完成的下载数据大小（单位：字节）

```csharp title="Declaration"
public long CurrentDownloadBytes { get; }
```
