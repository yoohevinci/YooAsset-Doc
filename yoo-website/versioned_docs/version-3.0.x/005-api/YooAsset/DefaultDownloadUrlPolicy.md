---
title: Class DefaultDownloadUrlPolicy
sidebar_label: DefaultDownloadUrlPolicy
description: "默认的 URL 选择策略"
---
# Class DefaultDownloadUrlPolicy
默认的 URL 选择策略

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class DefaultDownloadUrlPolicy : IDownloadUrlPolicy
```
## Methods
### SelectUrl(IReadOnlyList&lt;string&gt;)
基于内部失败计数轮转选择 URL

```csharp title="Declaration"
public string SelectUrl(IReadOnlyList<string> candidateUrls)
```

##### Returns

`System.String`: 选中的 URL
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.IReadOnlyList<System.String>` | *candidateUrls* | 候选 URL 列表 |

### OnRequestSucceeded(string)
请求成功反馈，保持当前 URL 不变。

```csharp title="Declaration"
public void OnRequestSucceeded(string url)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 成功请求的 URL |

### OnRequestFailed(string, long, string)
请求失败反馈，递增失败计数以切换 URL。

```csharp title="Declaration"
public void OnRequestFailed(string url, long httpCode, string httpError)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *url* | 失败请求的 URL |
| `System.Int64` | *httpCode* | HTTP 响应状态码 |
| `System.String` | *httpError* | HTTP 错误信息 |


## Implements

* [YooAsset.IDownloadUrlPolicy](../YooAsset/IDownloadUrlPolicy.md)
