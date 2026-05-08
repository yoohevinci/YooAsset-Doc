---
title: Interface IDownloadRetryPolicy
sidebar_label: IDownloadRetryPolicy
description: "下载重试策略"
---
# Interface IDownloadRetryPolicy
下载重试策略

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadRetryPolicy.cs#L7)
```csharp title="Declaration"
public interface IDownloadRetryPolicy
```
## Methods
### IsRetryableError(string, long, string)
判断本次下载失败是否属于可重试的错误
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadRetryPolicy.cs#L16)
```csharp title="Declaration"
bool IsRetryableError(string url, long httpCode, string httpError)
```

##### Returns

`System.Boolean`: true 允许重试；false 应立即失败。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 请求地址 |
| `System.Int64` | *httpCode* | HTTP 状态码（0 表示网络中断或非 HTTP 错误） |
| `System.String` | *httpError* | 服务器返回的错误描述文本 |

### CalculateRetryDelay(int, float)
计算本次重试应等待的时长（秒）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadRetryPolicy.cs#L24)
```csharp title="Declaration"
float CalculateRetryDelay(int retryCount, float previousDelay)
```

##### Returns

`System.Single`: 本次应等待的秒数
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Int32` | *retryCount* | 即将进入的重试次数（从 1 开始） |
| `System.Single` | *previousDelay* | 上一次等待时长（首次时为 0） |

