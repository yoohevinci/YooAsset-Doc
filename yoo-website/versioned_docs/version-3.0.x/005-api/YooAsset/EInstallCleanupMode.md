---
title: Enum EInstallCleanupMode
sidebar_label: EInstallCleanupMode
description: "覆盖安装清理模式"
---
# Enum EInstallCleanupMode
覆盖安装清理模式

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/Services/SandboxFileSystem/EInstallCleanupMode.cs#L7)
```csharp title="Declaration"
public enum EInstallCleanupMode
```
## Fields
### None
不做任何处理
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/Services/SandboxFileSystem/EInstallCleanupMode.cs#L12)
```csharp title="Declaration"
None = 0
```
### ClearAllCacheFiles
清理所有缓存文件（包含资源文件和清单文件）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/Services/SandboxFileSystem/EInstallCleanupMode.cs#L17)
```csharp title="Declaration"
ClearAllCacheFiles = 1
```
### ClearAllBundleFiles
清理所有缓存的资源文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/Services/SandboxFileSystem/EInstallCleanupMode.cs#L22)
```csharp title="Declaration"
ClearAllBundleFiles = 2
```
### ClearAllManifestFiles
清理所有缓存的清单文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/Services/SandboxFileSystem/EInstallCleanupMode.cs#L27)
```csharp title="Declaration"
ClearAllManifestFiles = 3
```
