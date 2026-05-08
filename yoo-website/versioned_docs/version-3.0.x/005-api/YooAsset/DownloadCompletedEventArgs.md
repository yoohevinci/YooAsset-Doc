---
title: Struct DownloadCompletedEventArgs
sidebar_label: DownloadCompletedEventArgs
description: "下载完成事件参数"
---
# Struct DownloadCompletedEventArgs
下载完成事件参数

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct DownloadCompletedEventArgs
```
## Properties
### PackageName
所属包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### Succeeded
是否成功

```csharp title="Declaration"
public bool Succeeded { get; }
```
### Error
下载失败时的错误信息

```csharp title="Declaration"
public string Error { get; }
```
