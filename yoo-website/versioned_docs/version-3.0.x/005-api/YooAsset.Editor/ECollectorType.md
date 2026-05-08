---
title: Enum ECollectorType
sidebar_label: ECollectorType
description: "收集器类型"
---
# Enum ECollectorType
收集器类型

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/ECollectorType.cs#L8)
```csharp title="Declaration"
[Serializable]
public enum ECollectorType
```
## Fields
### MainAssetCollector
收集参与打包的主资源对象，并写入到资源清单的资源列表里（可以通过代码加载）。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/ECollectorType.cs#L14)
```csharp title="Declaration"
MainAssetCollector = 0
```
### StaticAssetCollector
收集参与打包的主资源对象，但不写入到资源清单的资源列表里（无法通过代码加载）。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/ECollectorType.cs#L19)
```csharp title="Declaration"
StaticAssetCollector = 1
```
### DependAssetCollector
收集参与打包的依赖资源对象，但不写入到资源清单的资源列表里（无法通过代码加载）。
注意：如果依赖资源对象没有被主资源对象引用，则不参与打包构建。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/ECollectorType.cs#L25)
```csharp title="Declaration"
DependAssetCollector = 2
```
### None
该收集器类型不能被设置
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/ECollectorType.cs#L30)
```csharp title="Declaration"
None = 3
```
