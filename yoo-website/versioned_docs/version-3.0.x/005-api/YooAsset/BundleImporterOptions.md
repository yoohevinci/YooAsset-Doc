---
title: Struct BundleImporterOptions
sidebar_label: BundleImporterOptions
description: "资源导入选项"
---
# Struct BundleImporterOptions
资源导入选项

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct BundleImporterOptions
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
### BundleInfos
资源包信息列表

```csharp title="Declaration"
public ImportBundleInfo[] BundleInfos { get; }
```
