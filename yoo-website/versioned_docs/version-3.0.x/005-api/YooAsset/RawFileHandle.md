---
title: Class RawFileHandle
sidebar_label: RawFileHandle
description: "原生文件句柄，用于访问未经 Unity 处理的原始文件。"
---
# Class RawFileHandle
原生文件句柄，用于访问未经 Unity 处理的原始文件。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/RawFileHandle.cs#L7)
```csharp title="Declaration"
public sealed class RawFileHandle : HandleBase, IEnumerator, IDisposable
```
## Methods
### WaitForAsyncComplete()
等待异步执行完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/RawFileHandle.cs#L44)
```csharp title="Declaration"
public void WaitForAsyncComplete()
```
### GetRawFilePath()
获取原生文件的路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/RawFileHandle.cs#L55)
```csharp title="Declaration"
public string GetRawFilePath()
```

##### Returns

`System.String`: 原生文件的磁盘路径## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/RawFileHandle.cs#L22)
```csharp title="Declaration"
public event Action<RawFileHandle> Completed
```
##### Event Type
`System.Action<YooAsset.RawFileHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
