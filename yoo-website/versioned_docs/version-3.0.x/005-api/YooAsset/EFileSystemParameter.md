---
title: Enum EFileSystemParameter
sidebar_label: EFileSystemParameter
description: "文件系统参数类型定义"
---
# Enum EFileSystemParameter
文件系统参数类型定义

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public enum EFileSystemParameter
```
## Fields
### FileVerifyLevel
初始化的时候缓存文件校验级别 [YooAsset.EFileVerifyLevel](/docs/3.0.x/api/YooAsset/EFileVerifyLevel)

```csharp title="Declaration"
FileVerifyLevel = 0
```
### FileVerifyMaxConcurrency
初始化的时候缓存文件校验最大并发数 `System.Int32`

```csharp title="Declaration"
FileVerifyMaxConcurrency = 1
```
### InstallCleanupMode
覆盖安装缓存清理模式 [YooAsset.EInstallCleanupMode](/docs/3.0.x/api/YooAsset/EInstallCleanupMode)

```csharp title="Declaration"
InstallCleanupMode = 2
```
### DisableUnityWebCache
禁用Unity的网络缓存 `System.Boolean`

```csharp title="Declaration"
DisableUnityWebCache = 3
```
### UnityWebRequestCreator
UnityWebRequest 创建委托 [YooAsset.EFileSystemParameter.UnityWebRequestCreator](../YooAsset/EFileSystemParameter.md#unitywebrequestcreator)

```csharp title="Declaration"
UnityWebRequestCreator = 4
```
### DownloadDisableOndemand
禁用边玩边下机制 `System.Boolean`

```csharp title="Declaration"
DownloadDisableOndemand = 5
```
### DownloadBackend
下载后台接口 `YooAsset.IDownloadBackend`

```csharp title="Declaration"
DownloadBackend = 6
```
### DownloadMaxConcurrency
最大并发连接数 默认值：10（推荐范围 1-32） `System.Int32`

```csharp title="Declaration"
DownloadMaxConcurrency = 7
```
### DownloadMaxRequestPerFrame
每帧发起的最大请求数 默认值：5（推荐范围 1-10）`System.Int32`

```csharp title="Declaration"
DownloadMaxRequestPerFrame = 8
```
### DownloadWatchdogTimeout
下载任务的看门狗机制超时时间 `System.Int32`

```csharp title="Declaration"
DownloadWatchdogTimeout = 9
```
### DownloadResumeMinimumSize
启用断点续传的最小尺寸 `System.Int64`

```csharp title="Declaration"
DownloadResumeMinimumSize = 10
```
### VirtualWebglMode
模拟WebGL平台模式 `System.Boolean`

```csharp title="Declaration"
VirtualWebglMode = 11
```
### VirtualDownloadMode
模拟虚拟下载模式 `System.Boolean`

```csharp title="Declaration"
VirtualDownloadMode = 12
```
### VirtualDownloadSpeed
模拟虚拟下载的网速（单位：字节） `System.Int32`

```csharp title="Declaration"
VirtualDownloadSpeed = 13
```
### AsyncSimulateMinFrame
异步模拟加载最小帧数 `System.Int32`

```csharp title="Declaration"
AsyncSimulateMinFrame = 14
```
### AsyncSimulateMaxFrame
异步模拟加载最大帧数 `System.Int32`

```csharp title="Declaration"
AsyncSimulateMaxFrame = 15
```
### CopyBuiltinPackageManifest
拷贝内置清单 `System.Boolean`

```csharp title="Declaration"
CopyBuiltinPackageManifest = 16
```
### CopyBuiltinPackageManifestDestRoot
拷贝内置清单的目标目录 `System.String`

```csharp title="Declaration"
CopyBuiltinPackageManifestDestRoot = 17
```
### UnpackFileSystemRoot
解压文件系统的根目录 `System.String`

```csharp title="Declaration"
UnpackFileSystemRoot = 18
```
### RemoteService
远端资源地址查询服务类 [YooAsset.IRemoteService](/docs/3.0.x/api/YooAsset/IRemoteService)

```csharp title="Declaration"
RemoteService = 19
```
### AssetbundleDecryptor
AssetBundle 解密器 [YooAsset.IBundleDecryptor](/docs/3.0.x/api/YooAsset/IBundleDecryptor)

```csharp title="Declaration"
AssetbundleDecryptor = 20
```
### RawbundleDecryptor
RawBundle 解密器 [YooAsset.IBundleDecryptor](/docs/3.0.x/api/YooAsset/IBundleDecryptor)

```csharp title="Declaration"
RawbundleDecryptor = 21
```
### AssetbundleFallbackDecryptor
AssetBundle 备用解密器 [YooAsset.IBundleMemoryDecryptor](/docs/3.0.x/api/YooAsset/IBundleMemoryDecryptor)

```csharp title="Declaration"
AssetbundleFallbackDecryptor = 22
```
### ManifestDecryptor
资源清单解密器 [YooAsset.IManifestDecryptor](/docs/3.0.x/api/YooAsset/IManifestDecryptor)

```csharp title="Declaration"
ManifestDecryptor = 23
```
### DownloadRetryPolicy
下载重试判定策略 [YooAsset.IDownloadRetryPolicy](/docs/3.0.x/api/YooAsset/IDownloadRetryPolicy)

```csharp title="Declaration"
DownloadRetryPolicy = 24
```
### DownloadUrlPolicy
URL 选择策略 [YooAsset.IDownloadUrlPolicy](/docs/3.0.x/api/YooAsset/IDownloadUrlPolicy)

```csharp title="Declaration"
DownloadUrlPolicy = 25
```
