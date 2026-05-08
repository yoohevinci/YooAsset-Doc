---
title: Interface IRemoteService
sidebar_label: IRemoteService
description: "远端资源服务"
---
# Interface IRemoteService
远端资源服务

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IRemoteService.cs#L8)
```csharp title="Declaration"
public interface IRemoteService
```
## Methods
### GetRemoteUrls(string)
获取指定文件的所有远端候选地址，按优先级排序。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IRemoteService.cs#L15)
```csharp title="Declaration"
IReadOnlyList<string> GetRemoteUrls(string fileName)
```

##### Returns

`System.Collections.Generic.IReadOnlyList<System.String>`: 按优先级排序的远端候选地址列表，至少包含一个 URL。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *fileName* | 请求的文件名称 |

