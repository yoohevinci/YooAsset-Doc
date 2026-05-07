# 文件系统

学习如何配置文件系统的初始化参数。

YOO默认提供了多个文件系统类，可以满足大部分项目的业务需求。

- EditorFileSystem 编辑器模拟文件系统类
- BuiltinFileSystem 内置文件系统类
- SandboxFileSystem 缓存文件系统类
- WebRemoteFileSystem Web平台远端文件系统类
- WebServerFileSystem Web平台服务端文件系统类

还包含各类小游戏平台的文件系统扩展类，该文档不做解释说明！

### 文件系统初始化参数

**FileVerifyLevel**

参数说明：在文件系统初始化的时候，沙盒内缓存文件的校验级别。

支持范围：BuiltinFileSystem, SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.FileVerifyLevel, EFileVerifyLevel.High);
```



**FileVerifyMaxConcurrency**

参数说明：在文件系统初始化的时候，沙盒内缓存文件校验最大并发数。

注意事项：参数不会超过系统提供的最大工作线程数量，超过会被截断。

支持范围：BuiltinFileSystem, SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.FileVerifyMaxConcurrency, 100);
```



**InstallCleanupMode**

参数说明：在覆盖安装之后，首次启动对沙盒内缓存文件的清理模式。

支持范围：BuiltinFileSystem, SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.InstallCleanupMode, EInstallCleanupMode.ClearAllCacheFiles);
```



**RemoteService**

参数说明：远程服务接口的实例类。

支持范围：SandboxFileSystem, WebRemoteFileSystem

```csharp
IRemoteService remoteService = new RemoteService(defaultHostServer, fallbackHostServer);
fileSystemParameters.AddParameter(EFileSystemParameter.RemoteService, remoteService);
```



**AssetbundleDecryptor**

参数说明：解密服务接口的实例类。

支持范围：BuiltinFileSystem, SandboxFileSystem, WebRemoteFileSystem, WebServerFileSystem

```csharp
IBundleDecryptor decryptor = new FileDecryptor();
fileSystemParameters.AddParameter(EFileSystemParameter.AssetbundleDecryptor, decryptor);
```



**ManifestDecryptor**

参数说明：资源清单服务类。可以实现资源清单的解密或解压。

支持范围：BuiltinFileSystem, SandboxFileSystem, WebRemoteFileSystem, WebServerFileSystem

```csharp
IManifestDecryptor manifestDecryptor = new ManifestDecryptor();
fileSystemParameters.AddParameter(EFileSystemParameter.ManifestDecryptor, manifestDecryptor);
```



**RawbundleDecryptor**

参数说明：RawBundle 解密器。

支持范围：BuiltinFileSystem, SandboxFileSystem

```csharp
IBundleDecryptor decryptor = new RawBundleDecryptor();
fileSystemParameters.AddParameter(EFileSystemParameter.RawbundleDecryptor, decryptor);
```



**AssetbundleFallbackDecryptor**

参数说明：AssetBundle 备用解密器，通常用于回退到内存解密方式。

支持范围：BuiltinFileSystem, SandboxFileSystem

```csharp
IBundleMemoryDecryptor fallbackDecryptor = new BundleMemoryDecryptor();
fileSystemParameters.AddParameter(EFileSystemParameter.AssetbundleFallbackDecryptor, fallbackDecryptor);
```



**已移除：追加文件扩展名**

旧版 `APPEND_FILE_EXTENSION` 参数已移除。



**已移除：禁用 Catalog 文件**

旧版 `DISABLE_CATALOG_FILE` 参数已移除。



**UnityWebRequestCreator**

参数说明：自定义 UnityWebRequest 创建委托，可用于设置自定义 Header 或证书校验等。

支持范围：WebRemoteFileSystem, WebServerFileSystem

```csharp
UnityWebRequestCreator creator = (url) => UnityWebRequest.Get(url);
fileSystemParameters.AddParameter(EFileSystemParameter.UnityWebRequestCreator, creator);
```



**DownloadBackend**

参数说明：自定义下载后台接口，替换默认的下载实现。

支持范围：SandboxFileSystem

```csharp
IDownloadBackend backend = new MyDownloadBackend();
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadBackend, backend);
```



**DisableUnityWebCache**

参数说明：禁用Unity的网络缓存。

支持范围：WebRemoteFileSystem, WebServerFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.DisableUnityWebCache, true);
```



**DownloadDisableOndemand**

参数说明：禁用边玩边下机制。（不推荐开启）

支持范围：SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadDisableOndemand, true);
```



**DownloadMaxConcurrency**

参数说明：下载系统，最大并发连接数。可以控制同时下载的文件数量。

支持范围：SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadMaxConcurrency, 10);
```



**DownloadMaxRequestPerFrame**

参数说明：下载系统，每帧发起的最大请求数。

支持范围：SandboxFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadMaxRequestPerFrame, 10);
```



**DownloadWatchdogTimeout**

参数说明：下载任务的看门狗机制监控时间。

参数解读：监控时间范围内，如果没有接收到任何下载数据，那么直接终止任务！

支持范围：SandboxFileSystem

```csharp
int seconds = 60; //单位：秒
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadWatchdogTimeout, seconds);
```



**DownloadResumeMinimumSize**

参数说明：启用断点续传的文件最小尺寸。小于该尺寸的文件不启用断点续传。

支持范围：SandboxFileSystem

```csharp
long fileSize = 1024 * 1024; //单位：byte
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadResumeMinimumSize, fileSize);
```



**已移除：断点续传响应码**

旧版 `RESUME_DOWNLOAD_RESPONSE_CODES` 参数已移除。



**DownloadRetryPolicy**

参数说明：自定义下载重试策略。

支持范围：SandboxFileSystem, WebRemoteFileSystem, WebServerFileSystem, 小游戏平台文件系统

```csharp
IDownloadRetryPolicy retryPolicy = new MyDownloadRetryPolicy();
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadRetryPolicy, retryPolicy);
```



**DownloadUrlPolicy**

参数说明：自定义 URL 选择策略。

支持范围：SandboxFileSystem, WebRemoteFileSystem, WebServerFileSystem, 小游戏平台文件系统

```csharp
IDownloadUrlPolicy urlPolicy = new MyDownloadUrlPolicy();
fileSystemParameters.AddParameter(EFileSystemParameter.DownloadUrlPolicy, urlPolicy);
```



**VirtualWebglMode**

参数说明：模拟WebGL平台模式。

实际用途：编辑器下不需要构建AB，也可以模拟小游戏开发环境，等同真机运行环境。

支持范围：EditorFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.VirtualWebglMode, true);
```



**VirtualDownloadMode**

参数说明：模拟虚拟下载模式。

实际用途：编辑器下不需要构建AB，也可以模拟远端资源下载，等同真机运行环境。

支持范围：EditorFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.VirtualDownloadMode, true);
```



**VirtualDownloadSpeed**

参数说明：模拟虚拟下载的网速。

支持范围：EditorFileSystem

```csharp
int speed = 1024 * 1024; //单位：字节
fileSystemParameters.AddParameter(EFileSystemParameter.VirtualDownloadSpeed, speed);
```



**AsyncSimulateMinFrame**

参数说明：异步模拟加载最小帧数。

实际用途：编辑器下不需要构建AB，也可以模拟异步加载的最小耗时。

支持范围：EditorFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.AsyncSimulateMinFrame, 5);
```



**AsyncSimulateMaxFrame**

参数说明：异步模拟加载最大帧数。

实际用途：编辑器下不需要构建AB，也可以模拟异步加载的最大耗时。

支持范围：EditorFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.AsyncSimulateMaxFrame, 20);
```



**CopyBuiltinPackageManifest**

参数说明：拷贝内置清单。

支持范围：BuiltinFileSystem

```csharp
fileSystemParameters.AddParameter(EFileSystemParameter.CopyBuiltinPackageManifest, true);
```



**CopyBuiltinPackageManifestDestRoot**

参数说明：拷贝内置清单的目标目录。

支持范围：BuiltinFileSystem

```csharp
string destDirectory = $"{Application.persistentDataPath}/yoo/PackageName/ManifestFiles/";
fileSystemParameters.AddParameter(EFileSystemParameter.CopyBuiltinPackageManifestDestRoot, destDirectory);
```



**已移除：拷贝本地文件服务**

旧版 `COPY_LOCAL_FILE_SERVICES` 参数已移除。



**UnpackFileSystemRoot**

参数说明：指定内置文件系统解压文件的根目录。

支持范围：BuiltinFileSystem

```csharp
string unpackRoot = $"{Application.persistentDataPath}/yoo/unpack";
fileSystemParameters.AddParameter(EFileSystemParameter.UnpackFileSystemRoot, unpackRoot);
```

