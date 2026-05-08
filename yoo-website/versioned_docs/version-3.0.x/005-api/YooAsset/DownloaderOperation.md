---
title: Class DownloaderOperation
sidebar_label: DownloaderOperation
description: "下载操作基类，提供资源下载、暂停、恢复和取消功能。"
---
# Class DownloaderOperation
下载操作基类，提供资源下载、暂停、恢复和取消功能。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public abstract class DownloaderOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Properties
### TotalDownloadCount
统计的下载文件总数量

```csharp title="Declaration"
public int TotalDownloadCount { get; }
```
### TotalDownloadBytes
统计的下载文件的总大小

```csharp title="Declaration"
public long TotalDownloadBytes { get; }
```
### CurrentDownloadCount
当前已经完成的下载总数量

```csharp title="Declaration"
public int CurrentDownloadCount { get; }
```
### CurrentDownloadBytes
当前已经完成的下载总大小

```csharp title="Declaration"
public long CurrentDownloadBytes { get; }
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalUpdate()
```
### Combine(DownloaderOperation)
合并其它下载器

```csharp title="Declaration"
public void Combine(DownloaderOperation downloader)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.DownloaderOperation](../YooAsset/DownloaderOperation.md) | *downloader* | 合并的下载器 |

### StartDownload()
开始下载

```csharp title="Declaration"
public void StartDownload()
```
### PauseDownload()
暂停下载

```csharp title="Declaration"
public void PauseDownload()
```
### ResumeDownload()
恢复下载

```csharp title="Declaration"
public void ResumeDownload()
```
### CancelDownload()
取消下载

```csharp title="Declaration"
public void CancelDownload()
```
## Events
### DownloadCompleted
当下载完成时触发（无论成功或失败）。

```csharp title="Declaration"
public event Action<DownloadCompletedEventArgs> DownloadCompleted
```
##### Event Type
`System.Action<YooAsset.DownloadCompletedEventArgs>`
### DownloadProgressChanged
当下载进度更新时触发

```csharp title="Declaration"
public event Action<DownloadProgressChangedEventArgs> DownloadProgressChanged
```
##### Event Type
`System.Action<YooAsset.DownloadProgressChangedEventArgs>`
### DownloadError
当发生下载错误时触发

```csharp title="Declaration"
public event Action<DownloadErrorEventArgs> DownloadError
```
##### Event Type
`System.Action<YooAsset.DownloadErrorEventArgs>`
### DownloadFileStarted
当开始下载单个文件时触发

```csharp title="Declaration"
public event Action<DownloadFileStartedEventArgs> DownloadFileStarted
```
##### Event Type
`System.Action<YooAsset.DownloadFileStartedEventArgs>`

## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
