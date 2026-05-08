---
title: Interface IDownloadUrlPolicy
sidebar_label: IDownloadUrlPolicy
description: "URL 选择策略"
---
# Interface IDownloadUrlPolicy
URL 选择策略

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadUrlPolicy.cs#L8)
```csharp title="Declaration"
public interface IDownloadUrlPolicy
```
## Methods
### SelectUrl(IReadOnlyList&lt;string&gt;)
选择本次请求应使用的 URL
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadUrlPolicy.cs#L15)
```csharp title="Declaration"
string SelectUrl(IReadOnlyList<string> candidateUrls)
```

##### Returns

`System.String`: 选中的 URL
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.IReadOnlyList<System.String>` | *candidateUrls* | 候选 URL 列表（至少包含一个） |

### OnRequestSucceeded(string)
反馈请求成功，策略可据此更新内部状态。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadUrlPolicy.cs#L21)
```csharp title="Declaration"
void OnRequestSucceeded(string url)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 实际使用的 URL |

### OnRequestFailed(string, long, string)
反馈请求失败，策略可据此更新内部状态。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IDownloadUrlPolicy.cs#L29)
```csharp title="Declaration"
void OnRequestFailed(string url, long httpCode, string httpError)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 实际使用的 URL |
| `System.Int64` | *httpCode* | HTTP 状态码（0 表示网络中断或非 HTTP 错误） |
| `System.String` | *httpError* | 服务器返回的错误描述文本 |

