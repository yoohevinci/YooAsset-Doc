---
title: Enum EFileSystemParameter
sidebar_label: EFileSystemParameter
description: "文件系统参数类型定义"
---
# Enum EFileSystemParameter
文件系统参数类型定义

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L7)
```csharp title="Declaration"
public enum EFileSystemParameter
```
## Fields
### FileVerifyLevel
初始化的时候缓存文件校验级别 [YooAsset.EFileVerifyLevel](../YooAsset/EFileVerifyLevel.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L12)
```csharp title="Declaration"
FileVerifyLevel = 0
```
### FileVerifyMaxConcurrency
初始化的时候缓存文件校验最大并发数 `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L17)
```csharp title="Declaration"
FileVerifyMaxConcurrency = 1
```
### InstallCleanupMode
覆盖安装缓存清理模式 [YooAsset.EInstallCleanupMode](../YooAsset/EInstallCleanupMode.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L22)
```csharp title="Declaration"
InstallCleanupMode = 2
```
### DisableUnityWebCache
禁用Unity的网络缓存 `System.Boolean`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L27)
```csharp title="Declaration"
DisableUnityWebCache = 3
```
### UnityWebRequestCreator
UnityWebRequest 创建委托 [YooAsset.EFileSystemParameter.UnityWebRequestCreator](../YooAsset/EFileSystemParameter.md#unitywebrequestcreator)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L32)
```csharp title="Declaration"
UnityWebRequestCreator = 4
```
### DownloadDisableOndemand
禁用边玩边下机制 `System.Boolean`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L37)
```csharp title="Declaration"
DownloadDisableOndemand = 5
```
### DownloadBackend
下载后台接口 `YooAsset.IDownloadBackend`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L42)
```csharp title="Declaration"
DownloadBackend = 6
```
### DownloadMaxConcurrency
最大并发连接数 默认值：10（推荐范围 1-32） `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L47)
```csharp title="Declaration"
DownloadMaxConcurrency = 7
```
### DownloadMaxRequestPerFrame
每帧发起的最大请求数 默认值：5（推荐范围 1-10）`System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L52)
```csharp title="Declaration"
DownloadMaxRequestPerFrame = 8
```
### DownloadWatchdogTimeout
下载任务的看门狗机制超时时间 `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L57)
```csharp title="Declaration"
DownloadWatchdogTimeout = 9
```
### DownloadResumeMinimumSize
启用断点续传的最小尺寸 `System.Int64`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L62)
```csharp title="Declaration"
DownloadResumeMinimumSize = 10
```
### VirtualWebglMode
模拟WebGL平台模式 `System.Boolean`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L67)
```csharp title="Declaration"
VirtualWebglMode = 11
```
### VirtualDownloadMode
模拟虚拟下载模式 `System.Boolean`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L72)
```csharp title="Declaration"
VirtualDownloadMode = 12
```
### VirtualDownloadSpeed
模拟虚拟下载的网速（单位：字节） `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L77)
```csharp title="Declaration"
VirtualDownloadSpeed = 13
```
### AsyncSimulateMinFrame
异步模拟加载最小帧数 `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L82)
```csharp title="Declaration"
AsyncSimulateMinFrame = 14
```
### AsyncSimulateMaxFrame
异步模拟加载最大帧数 `System.Int32`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L87)
```csharp title="Declaration"
AsyncSimulateMaxFrame = 15
```
### CopyBuiltinPackageManifest
拷贝内置清单 `System.Boolean`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L92)
```csharp title="Declaration"
CopyBuiltinPackageManifest = 16
```
### CopyBuiltinPackageManifestDestRoot
拷贝内置清单的目标目录 `System.String`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L97)
```csharp title="Declaration"
CopyBuiltinPackageManifestDestRoot = 17
```
### UnpackFileSystemRoot
解压文件系统的根目录 `System.String`
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L102)
```csharp title="Declaration"
UnpackFileSystemRoot = 18
```
### RemoteService
远端资源地址查询服务类 [YooAsset.IRemoteService](../YooAsset/IRemoteService.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L107)
```csharp title="Declaration"
RemoteService = 19
```
### AssetbundleDecryptor
AssetBundle 解密器 [YooAsset.IBundleDecryptor](../YooAsset/IBundleDecryptor.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L112)
```csharp title="Declaration"
AssetbundleDecryptor = 20
```
### RawbundleDecryptor
RawBundle 解密器 [YooAsset.IBundleDecryptor](../YooAsset/IBundleDecryptor.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L117)
```csharp title="Declaration"
RawbundleDecryptor = 21
```
### AssetbundleFallbackDecryptor
AssetBundle 备用解密器 [YooAsset.IBundleMemoryDecryptor](../YooAsset/IBundleMemoryDecryptor.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L122)
```csharp title="Declaration"
AssetbundleFallbackDecryptor = 22
```
### ManifestDecryptor
资源清单解密器 [YooAsset.IManifestDecryptor](../YooAsset/IManifestDecryptor.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L127)
```csharp title="Declaration"
ManifestDecryptor = 23
```
### DownloadRetryPolicy
下载重试判定策略 [YooAsset.IDownloadRetryPolicy](../YooAsset/IDownloadRetryPolicy.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L132)
```csharp title="Declaration"
DownloadRetryPolicy = 24
```
### DownloadUrlPolicy
URL 选择策略 [YooAsset.IDownloadUrlPolicy](../YooAsset/IDownloadUrlPolicy.md)
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/FileSystem/EFileSystemParameter.cs#L137)
```csharp title="Declaration"
DownloadUrlPolicy = 25
```
