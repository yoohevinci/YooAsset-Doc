---
title: Class BundleFileHandle
sidebar_label: BundleFileHandle
description: "资源包文件句柄，用于持有已加载的资源包引用。"
---
# Class BundleFileHandle
资源包文件句柄，用于持有已加载的资源包引用。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/BundleFileHandle.cs#L7)
```csharp title="Declaration"
public sealed class BundleFileHandle : HandleBase, IEnumerator, IDisposable
```
## Methods
### WaitForAsyncComplete()
等待异步执行完毕
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/BundleFileHandle.cs#L44)
```csharp title="Declaration"
public void WaitForAsyncComplete()
```
## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/BundleFileHandle.cs#L22)
```csharp title="Declaration"
public event Action<BundleFileHandle> Completed
```
##### Event Type
`System.Action<YooAsset.BundleFileHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
