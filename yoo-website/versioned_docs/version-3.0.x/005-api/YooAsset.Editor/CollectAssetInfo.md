---
title: Class CollectAssetInfo
sidebar_label: CollectAssetInfo
description: "收集的资源信息"
---
# Class CollectAssetInfo
收集的资源信息

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class CollectAssetInfo
```
## Properties
### CollectorType
收集器类型

```csharp title="Declaration"
public ECollectorType CollectorType { get; }
```
### BundleName
资源包名称

```csharp title="Declaration"
public string BundleName { get; }
```
### Address
可寻址地址

```csharp title="Declaration"
public string Address { get; }
```
### AssetInfo
资源信息

```csharp title="Declaration"
public EditorAssetInfo AssetInfo { get; }
```
### AssetTags
资源分类标签

```csharp title="Declaration"
public List<string> AssetTags { get; }
```
### DependAssets
依赖的资源列表

```csharp title="Declaration"
public List<EditorAssetInfo> DependAssets { get; set; }
```
