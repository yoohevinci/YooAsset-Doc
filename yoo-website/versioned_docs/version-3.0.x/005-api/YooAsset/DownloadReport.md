---
title: Struct DownloadReport
sidebar_label: DownloadReport
description: "下载状态报告"
---
# Struct DownloadReport
下载状态报告

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct DownloadReport
```
## Properties
### HttpCode
HTTP 响应状态码

```csharp title="Declaration"
public long HttpCode { get; }
```
### HttpError
HTTP 错误信息

```csharp title="Declaration"
public string HttpError { get; }
```
### DownloadedBytes
当前下载的字节数

```csharp title="Declaration"
public long DownloadedBytes { get; }
```
### DownloadProgress
当前下载进度（0f - 1f）

```csharp title="Declaration"
public float DownloadProgress { get; }
```
## Fields
### Empty
空的下载报告实例（所有字段为默认值）

```csharp title="Declaration"
public static readonly DownloadReport Empty
```
## Methods
### CreateProgress(long, float)
创建下载进度报告

```csharp title="Declaration"
public static DownloadReport CreateProgress(long downloadedBytes, float downloadProgress)
```

##### Returns

[YooAsset.DownloadReport](/docs/3.0.x/api/YooAsset/DownloadReport): 不含 HTTP 状态信息的进度报告
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int64` | *downloadedBytes* | 已下载的字节数 |
| `System.Single` | *downloadProgress* | 下载进度，取值范围 0f ~ 1f |

### CreateFinished(long, string, long, float)
创建包含 HTTP 状态的最终报告（成功或失败）

```csharp title="Declaration"
public static DownloadReport CreateFinished(long httpCode, string httpError, long downloadedBytes, float downloadProgress)
```

##### Returns

[YooAsset.DownloadReport](/docs/3.0.x/api/YooAsset/DownloadReport): 包含完整 HTTP 状态信息的最终报告
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int64` | *httpCode* | HTTP 响应状态码 |
| `System.String` | *httpError* | HTTP 错误信息，成功时为 null。 |
| `System.Int64` | *downloadedBytes* | 已下载的字节数 |
| `System.Single` | *downloadProgress* | 下载进度，取值范围 0f ~ 1f |

