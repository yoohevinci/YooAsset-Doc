---
title: Enum ECollectFlags
sidebar_label: ECollectFlags
description: "资源收集标记位"
---
# Enum ECollectFlags
资源收集标记位

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L7)
```csharp title="Declaration"
[Flags]
public enum ECollectFlags
```
## Fields
### None
无标记
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L13)
```csharp title="Declaration"
None = 0
```
### IgnoreGetDependencies
不收集依赖资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L18)
```csharp title="Declaration"
IgnoreGetDependencies = 1
```
### IgnoreStaticCollector
忽略静态收集器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L23)
```csharp title="Declaration"
IgnoreStaticCollector = 2
```
### IgnoreDependCollector
忽略依赖收集器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectCommand.cs#L28)
```csharp title="Declaration"
IgnoreDependCollector = 4
```
