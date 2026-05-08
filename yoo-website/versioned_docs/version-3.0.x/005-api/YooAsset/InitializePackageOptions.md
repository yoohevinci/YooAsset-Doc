---
title: Class InitializePackageOptions
sidebar_label: InitializePackageOptions
description: "初始化参数"
---
# Class InitializePackageOptions
初始化参数

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public abstract class InitializePackageOptions
```
## Properties
### BundleLoadingMaxConcurrency
同时加载Bundle文件的最大并发数

```csharp title="Declaration"
public int BundleLoadingMaxConcurrency { get; set; }
```
### AutoUnloadBundleWhenUnused
是否在资源引用计数为零时自动释放资源包

```csharp title="Declaration"
public bool AutoUnloadBundleWhenUnused { get; set; }
```
### WebGLForceSyncLoadAsset
是否在WebGL平台强制同步加载资源对象

```csharp title="Declaration"
public bool WebGLForceSyncLoadAsset { get; set; }
```
