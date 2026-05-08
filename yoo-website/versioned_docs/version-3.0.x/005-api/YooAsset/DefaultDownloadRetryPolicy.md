---
title: Class DefaultDownloadRetryPolicy
sidebar_label: DefaultDownloadRetryPolicy
description: "默认的下载重试策略"
---
# Class DefaultDownloadRetryPolicy
默认的下载重试策略

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class DefaultDownloadRetryPolicy : IDownloadRetryPolicy
```
## Methods
### IsRetryableError(string, long, string)
判断本次下载失败是否属于可重试的错误

```csharp title="Declaration"
public bool IsRetryableError(string url, long httpCode, string httpError)
```

##### Returns

`System.Boolean`: 如果该错误可以重试则返回 true，否则返回 false。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 失败请求的 URL |
| `System.Int64` | *httpCode* | HTTP 响应状态码 |
| `System.String` | *httpError* | HTTP 错误信息 |

### CalculateRetryDelay(int, float)
计算重试等待时长（秒）

```csharp title="Declaration"
public float CalculateRetryDelay(int retryCount, float previousDelay)
```

##### Returns

`System.Single`: 本次重试前的等待时长（秒）
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int32` | *retryCount* | 当前已重试次数 |
| `System.Single` | *previousDelay* | 上一次的等待时长（秒） |


## Implements

* [YooAsset.IDownloadRetryPolicy](../YooAsset/IDownloadRetryPolicy.md)
