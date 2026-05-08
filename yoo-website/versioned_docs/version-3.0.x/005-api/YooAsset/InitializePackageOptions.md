---
title: Class InitializePackageOptions
sidebar_label: InitializePackageOptions
description: "初始化参数"
---
# Class InitializePackageOptions
初始化参数

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/InitializePackageOptions.cs#L8)
```csharp title="Declaration"
public abstract class InitializePackageOptions
```
## Properties
### BundleLoadingMaxConcurrency
同时加载Bundle文件的最大并发数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/InitializePackageOptions.cs#L13)
```csharp title="Declaration"
public int BundleLoadingMaxConcurrency { get; set; }
```
### AutoUnloadBundleWhenUnused
是否在资源引用计数为零时自动释放资源包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/InitializePackageOptions.cs#L18)
```csharp title="Declaration"
public bool AutoUnloadBundleWhenUnused { get; set; }
```
### WebGLForceSyncLoadAsset
是否在WebGL平台强制同步加载资源对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/Operations/InitializePackageOptions.cs#L23)
```csharp title="Declaration"
public bool WebGLForceSyncLoadAsset { get; set; }
```
