---
title: Struct ResourceDownloaderOptions
sidebar_label: ResourceDownloaderOptions
description: "按资源标签创建下载器的选项"
---
# Struct ResourceDownloaderOptions
按资源标签创建下载器的选项

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct ResourceDownloaderOptions
```
## Properties
### MaximumConcurrency
最大并发数量

```csharp title="Declaration"
public int MaximumConcurrency { get; }
```
### RetryCount
失败后的重试次数

```csharp title="Declaration"
public int RetryCount { get; }
```
### Tags
资源标签列表

```csharp title="Declaration"
public string[] Tags { get; }
```
