---
title: Class PrefetchManifestOperation
sidebar_label: PrefetchManifestOperation
description: "预取清单操作，用于提前加载指定版本的资源清单。"
---
# Class PrefetchManifestOperation
预取清单操作，用于提前加载指定版本的资源清单。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public sealed class PrefetchManifestOperation : AsyncOperationBase, IEnumerator, IComparable<AsyncOperationBase>
```
## Methods
### InternalStart()
内部启动方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalStart()
```
### InternalUpdate()
内部更新方法（子类必须实现）

```csharp title="Declaration"
protected override void InternalUpdate()
```
### CreateResourceDownloader(ResourceDownloaderOptions)
创建资源下载器，用于下载指定的资源标签列表关联的资源包文件。

```csharp title="Declaration"
public ResourceDownloaderOperation CreateResourceDownloader(ResourceDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](/docs/api/YooAsset/ResourceDownloaderOperation): 资源下载操作实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.ResourceDownloaderOptions](/docs/api/YooAsset/ResourceDownloaderOptions) | *options* | 资源下载选项 |

### CreateBundleDownloader(BundleDownloaderOptions)
创建资源下载器，用于下载指定的资源信息列表依赖的资源包文件。

```csharp title="Declaration"
public ResourceDownloaderOperation CreateBundleDownloader(BundleDownloaderOptions options)
```

##### Returns

[YooAsset.ResourceDownloaderOperation](/docs/api/YooAsset/ResourceDownloaderOperation): 资源下载操作实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDownloaderOptions](/docs/api/YooAsset/BundleDownloaderOptions) | *options* | 资源包下载选项 |


## Implements

* `System.Collections.IEnumerator`
* `System.IComparable<YooAsset.AsyncOperationBase>`
