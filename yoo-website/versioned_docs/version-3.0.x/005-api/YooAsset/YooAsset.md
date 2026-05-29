# YooAsset
## Classes
### [AllAssetsHandle](../YooAsset/AllAssetsHandle.md)
全资源句柄，用于加载资源包内所有资源对象。
### [AssetHandle](../YooAsset/AssetHandle.md)
资源句柄，用于管理单个资源对象的加载和访问。
### [AssetInfo](../YooAsset/AssetInfo.md)
资源信息类
### [AsyncOperationBase](../YooAsset/AsyncOperationBase.md)
异步操作基类
### [BundleFileHandle](../YooAsset/BundleFileHandle.md)
资源包文件句柄，用于持有已加载的资源包引用。
### [ClearCacheMethods](../YooAsset/ClearCacheMethods.md)
缓存清理方式标识符
### [ClearCacheOperation](../YooAsset/ClearCacheOperation.md)
清理缓存操作
### [CustomPlayModeOptions](../YooAsset/CustomPlayModeOptions.md)
自定义运行模式的操作选项
### [DefaultDownloadRetryPolicy](../YooAsset/DefaultDownloadRetryPolicy.md)
默认的下载重试策略
### [DefaultDownloadUrlPolicy](../YooAsset/DefaultDownloadUrlPolicy.md)
默认的 URL 选择策略
### [DestroyPackageOperation](../YooAsset/DestroyPackageOperation.md)
销毁资源包裹操作
### [DownloaderOperation](../YooAsset/DownloaderOperation.md)
下载操作基类，提供资源下载、暂停、恢复和取消功能。
### [EditorSimulateBuildInvoker](../YooAsset/EditorSimulateBuildInvoker.md)
编辑器模拟构建的调用入口
### [EditorSimulateModeOptions](../YooAsset/EditorSimulateModeOptions.md)
编辑器下模拟运行模式的操作选项
### [EnsureBundleFileOperation](../YooAsset/EnsureBundleFileOperation.md)
确保资源包已就绪的异步操作
### [FileSystemParameters](../YooAsset/FileSystemParameters.md)
提供文件系统的创建参数与工厂方法
### [HandleBase](../YooAsset/HandleBase.md)
资源句柄基类，提供资源加载状态查询和释放功能。
### [HashUtility](../YooAsset/HashUtility.md)
哈希工具类
### [HostPlayModeOptions](../YooAsset/HostPlayModeOptions.md)
联机运行模式的操作选项
### [InitializeFileSystemOperation](../YooAsset/InitializeFileSystemOperation.md)
初始化文件系统操作
### [InitializePackageOperation](../YooAsset/InitializePackageOperation.md)
初始化资源包裹操作
### [InitializePackageOptions](../YooAsset/InitializePackageOptions.md)
初始化资源包的操作选项
### [InstantiateOperation](../YooAsset/InstantiateOperation.md)
游戏对象实例化操作
### [LoadPackageManifestOperation](../YooAsset/LoadPackageManifestOperation.md)
加载资源清单操作
### [OfflinePlayModeOptions](../YooAsset/OfflinePlayModeOptions.md)
离线运行模式的操作选项
### [PackageBuildParameters](../YooAsset/PackageBuildParameters.md)
资源包裹构建的调用参数
### [PackageBuildResult](../YooAsset/PackageBuildResult.md)
资源包裹构建的返回结果
### [PackageDetails](../YooAsset/PackageDetails.md)
资源包裹的详细信息，用于外部查询包裹配置。
### [PrefetchManifestOperation](../YooAsset/PrefetchManifestOperation.md)
预取清单操作，用于提前加载指定版本的资源清单。
### [RawFileHandle](../YooAsset/RawFileHandle.md)
原生文件句柄，用于访问未经 Unity 处理的原始文件。
### [RawFileObject](../YooAsset/RawFileObject.md)
原生文件对象
### [RequestPackageVersionOperation](../YooAsset/RequestPackageVersionOperation.md)
请求包裹版本操作
### [ResourceDownloaderOperation](../YooAsset/ResourceDownloaderOperation.md)
资源下载操作类
### [ResourceImporterOperation](../YooAsset/ResourceImporterOperation.md)
资源导入操作类
### [ResourcePackage](../YooAsset/ResourcePackage.md)
资源包裹类
### [ResourceUnpackerOperation](../YooAsset/ResourceUnpackerOperation.md)
资源解压操作类
### [SceneHandle](../YooAsset/SceneHandle.md)
场景句柄，用于管理场景的加载、激活和卸载。
### [SubAssetsHandle](../YooAsset/SubAssetsHandle.md)
子资源句柄，用于管理资源包内子资源对象的加载和访问。
### [UnloadAllAssetsOperation](../YooAsset/UnloadAllAssetsOperation.md)
卸载所有资源的异步操作
### [UnloadSceneOperation](../YooAsset/UnloadSceneOperation.md)
场景卸载异步操作类
### [UnloadUnusedAssetsOperation](../YooAsset/UnloadUnusedAssetsOperation.md)
卸载未使用资源的异步操作
### [WebPlayModeOptions](../YooAsset/WebPlayModeOptions.md)
WebGL运行模式的操作选项
### [YooAssetConfiguration](../YooAsset/YooAssetConfiguration.md)
提供 YooAsset 全局配置的访问入口
### [YooAssets](../YooAsset/YooAssets.md)
资源系统的主入口
### [YooException](../YooAsset/YooException.md)
Base exception for all YooAsset custom exceptions.
### [YooHandleInvalidException](../YooAsset/YooHandleInvalidException.md)
The exception that is thrown when a resource handle is invalid.
### [YooInternalException](../YooAsset/YooInternalException.md)
The exception that is thrown when an internal logic error occurs in YooAsset.
### [YooManifestInvalidException](../YooAsset/YooManifestInvalidException.md)
The exception that is thrown when the resource manifest data is invalid.
### [YooPackageInvalidException](../YooAsset/YooPackageInvalidException.md)
The exception that is thrown when a resource package is in an invalid state.
## Structs
### [BundleDecryptArgs](../YooAsset/BundleDecryptArgs.md)
资源包解密操作的输入参数
### [BundleDownloaderOptions](../YooAsset/BundleDownloaderOptions.md)
按资源信息创建下载器的操作选项
### [BundleEncryptArgs](../YooAsset/BundleEncryptArgs.md)
资源包加密操作的输入参数
### [BundleEncryptResult](../YooAsset/BundleEncryptResult.md)
资源包加密操作的返回结果
### [BundleImporterOptions](../YooAsset/BundleImporterOptions.md)
资源导入的操作选项
### [BundleUnpackInfo](../YooAsset/BundleUnpackInfo.md)
资源包解包判定信息
### [ClearCacheOptions](../YooAsset/ClearCacheOptions.md)
清理缓存的操作选项
### [DownloadCompletedEventArgs](../YooAsset/DownloadCompletedEventArgs.md)
下载完成事件参数
### [DownloadErrorEventArgs](../YooAsset/DownloadErrorEventArgs.md)
下载错误事件参数
### [DownloadFileStartedEventArgs](../YooAsset/DownloadFileStartedEventArgs.md)
开始下载单个文件事件参数
### [DownloadProgressChangedEventArgs](../YooAsset/DownloadProgressChangedEventArgs.md)
下载进度更新事件参数
### [DownloadReport](../YooAsset/DownloadReport.md)
下载状态报告
### [EnsureBundleFileOperation.BundleDetail](../YooAsset/EnsureBundleFileOperation.BundleDetail.md)
资源包文件详情
### [EnsureBundleFileOptions](../YooAsset/EnsureBundleFileOptions.md)
确保资源包文件已就绪的操作选项
### [ImportBundleInfo](../YooAsset/ImportBundleInfo.md)
导入的资源包信息
### [InstantiateOptions](../YooAsset/InstantiateOptions.md)
游戏对象实例化的操作选项
### [LoadPackageManifestOptions](../YooAsset/LoadPackageManifestOptions.md)
加载清单的操作选项
### [OperationAwaiter](../YooAsset/OperationAwaiter.md)
支持异步编程的自定义 Awaiter
### [PrefetchManifestOptions](../YooAsset/PrefetchManifestOptions.md)
预取清单的操作选项
### [RequestPackageVersionOptions](../YooAsset/RequestPackageVersionOptions.md)
请求版本的操作选项
### [ResourceDownloaderOptions](../YooAsset/ResourceDownloaderOptions.md)
按资源标签创建下载器的操作选项
### [ResourceUnpackerOptions](../YooAsset/ResourceUnpackerOptions.md)
资源解压的操作选项
### [UnloadAllAssetsOptions](../YooAsset/UnloadAllAssetsOptions.md)
卸载所有资源的操作选项
### [UnloadUnusedAssetsOptions](../YooAsset/UnloadUnusedAssetsOptions.md)
卸载未使用资源的操作选项
## Interfaces
### [IBuiltinFileAccessor](../YooAsset/IBuiltinFileAccessor.md)

### [IBundleDecryptor](../YooAsset/IBundleDecryptor.md)
资源包解密器的基接口，本身不包含成员。
### [IBundleEncryptor](../YooAsset/IBundleEncryptor.md)
定义资源包的加密行为
### [IBundleMemoryDecryptor](../YooAsset/IBundleMemoryDecryptor.md)
基于内存的资源包解密器。
将整个加密数据解密为字节数组后加载。
### [IBundleOffsetDecryptor](../YooAsset/IBundleOffsetDecryptor.md)
基于偏移量的资源包解密器。
用于跳过文件头部加密区域后直接加载 AssetBundle。
### [IBundleStreamDecryptor](../YooAsset/IBundleStreamDecryptor.md)
基于流的资源包解密器。
通过提供解密流实现流式加载，适用于大文件场景。
### [IBundleUnpackPolicy](../YooAsset/IBundleUnpackPolicy.md)
内置资源包解包策略接口
### [IDownloadRetryPolicy](../YooAsset/IDownloadRetryPolicy.md)
下载重试策略
### [IDownloadUrlPolicy](../YooAsset/IDownloadUrlPolicy.md)
URL 选择策略
### [ILogger](../YooAsset/ILogger.md)
自定义日志处理接口
### [IManifestDecryptor](../YooAsset/IManifestDecryptor.md)
资源清单解密器
### [IManifestEncryptor](../YooAsset/IManifestEncryptor.md)
资源清单加密器
### [IRemoteService](../YooAsset/IRemoteService.md)
远端资源服务
## Enums
### [EBundleType](../YooAsset/EBundleType.md)
资源包的类型
### [EFileNameStyle](../YooAsset/EFileNameStyle.md)
远端资源文件命名风格
### [EFileSystemParameter](../YooAsset/EFileSystemParameter.md)
文件系统参数类型定义
### [EFileVerifyLevel](../YooAsset/EFileVerifyLevel.md)
文件校验等级
### [EInstallCleanupMode](../YooAsset/EInstallCleanupMode.md)
覆盖安装清理模式
### [EOperationStatus](../YooAsset/EOperationStatus.md)
异步操作状态枚举
### [EPlayMode](../YooAsset/EPlayMode.md)
运行模式
