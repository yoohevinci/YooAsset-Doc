---
title: Struct UnloadAllAssetsOptions
sidebar_label: UnloadAllAssetsOptions
description: "卸载所有资源的选项配置"
---
# Struct UnloadAllAssetsOptions
卸载所有资源的选项配置

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public readonly struct UnloadAllAssetsOptions
```
## Properties
### ShouldReleaseHandles
是否释放所有资源句柄，防止卸载过程中触发完成回调。

```csharp title="Declaration"
public bool ShouldReleaseHandles { get; }
```
### ShouldLockLoading
是否在卸载过程中锁定加载操作，防止新的任务请求。

```csharp title="Declaration"
public bool ShouldLockLoading { get; }
```
