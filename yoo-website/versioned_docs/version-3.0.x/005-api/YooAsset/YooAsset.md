# YooAsset
## Classes
### [AllAssetsHandle](/docs/api/YooAsset/AllAssetsHandle)
全资源句柄，用于加载资源包内所有资源对象。
### [AssetHandle](/docs/api/YooAsset/AssetHandle)
资源句柄，用于管理单个资源对象的加载和访问。
### [AssetInfo](/docs/api/YooAsset/AssetInfo)
资源信息类
### [AsyncOperationBase](/docs/api/YooAsset/AsyncOperationBase)
异步操作基类
### [ClearCacheMethods](/docs/api/YooAsset/ClearCacheMethods)
缓存清理方式标识符
### [ClearCacheOperation](/docs/api/YooAsset/ClearCacheOperation)
清理缓存操作
### [CustomPlayModeOptions](/docs/api/YooAsset/CustomPlayModeOptions)
自定义运行模式的初始化参数
### [DefaultDownloadRetryPolicy](/docs/api/YooAsset/DefaultDownloadRetryPolicy)
默认的下载重试策略
### [DefaultDownloadUrlPolicy](/docs/api/YooAsset/DefaultDownloadUrlPolicy)
默认的 URL 选择策略
### [DestroyPackageOperation](/docs/api/YooAsset/DestroyPackageOperation)
销毁资源包裹操作
### [DownloaderOperation](/docs/api/YooAsset/DownloaderOperation)
下载操作基类，提供资源下载、暂停、恢复和取消功能。
### [EditorSimulateBuildInvoker](/docs/api/YooAsset/EditorSimulateBuildInvoker)
编辑器模拟构建的调用入口
### [EditorSimulateModeOptions](/docs/api/YooAsset/EditorSimulateModeOptions)
编辑器下模拟运行模式的初始化参数
### [FileSystemParameters](/docs/api/YooAsset/FileSystemParameters)
提供文件系统的创建参数与工厂方法
### [HandleBase](/docs/api/YooAsset/HandleBase)
资源句柄基类，提供资源加载状态查询和释放功能。
### [HashUtility](/docs/api/YooAsset/HashUtility)
哈希工具类
### [HostPlayModeOptions](/docs/api/YooAsset/HostPlayModeOptions)
联机运行模式的初始化参数
### [InitializeFileSystemOperation](/docs/api/YooAsset/InitializeFileSystemOperation)
初始化文件系统操作
### [InitializePackageOperation](/docs/api/YooAsset/InitializePackageOperation)
初始化资源包裹操作
### [InitializePackageOptions](/docs/api/YooAsset/InitializePackageOptions)
初始化参数
### [InstantiateOperation](/docs/api/YooAsset/InstantiateOperation)
游戏对象实例化操作
### [LoadPackageManifestOperation](/docs/api/YooAsset/LoadPackageManifestOperation)
加载资源清单操作
### [OfflinePlayModeOptions](/docs/api/YooAsset/OfflinePlayModeOptions)
离线运行模式的初始化参数
### [PackageBuildParameters](/docs/api/YooAsset/PackageBuildParameters)
资源包裹构建的调用参数
### [PackageBuildResult](/docs/api/YooAsset/PackageBuildResult)
资源包裹构建的返回结果
### [PackageDetails](/docs/api/YooAsset/PackageDetails)
资源包裹的详细信息，用于外部查询包裹配置。
### [PrefetchManifestOperation](/docs/api/YooAsset/PrefetchManifestOperation)
预取清单操作，用于提前加载指定版本的资源清单。
### [RawFileHandle](/docs/api/YooAsset/RawFileHandle)
原生文件句柄，用于访问未经 Unity 处理的原始文件。
### [RawFileObject](/docs/api/YooAsset/RawFileObject)
原生文件对象
### [RequestPackageVersionOperation](/docs/api/YooAsset/RequestPackageVersionOperation)
请求包裹版本操作
### [ResourceDownloaderOperation](/docs/api/YooAsset/ResourceDownloaderOperation)
资源下载操作类
### [ResourceImporterOperation](/docs/api/YooAsset/ResourceImporterOperation)
资源导入操作类
### [ResourcePackage](/docs/api/YooAsset/ResourcePackage)
资源包裹类
### [ResourceUnpackerOperation](/docs/api/YooAsset/ResourceUnpackerOperation)
资源解压操作类
### [SceneHandle](/docs/api/YooAsset/SceneHandle)
场景句柄，用于管理场景的加载、激活和卸载。
### [SubAssetsHandle](/docs/api/YooAsset/SubAssetsHandle)
子资源句柄，用于管理资源包内子资源对象的加载和访问。
### [UnloadAllAssetsOperation](/docs/api/YooAsset/UnloadAllAssetsOperation)
卸载所有资源的异步操作
### [UnloadSceneOperation](/docs/api/YooAsset/UnloadSceneOperation)
场景卸载异步操作类
### [UnloadUnusedAssetsOperation](/docs/api/YooAsset/UnloadUnusedAssetsOperation)
卸载未使用资源的异步操作
### [WebPlayModeOptions](/docs/api/YooAsset/WebPlayModeOptions)
WebGL运行模式的初始化参数
### [YooAssetConfiguration](/docs/api/YooAsset/YooAssetConfiguration)
提供 YooAsset 全局配置的访问入口
### [YooAssets](/docs/api/YooAsset/YooAssets)
资源系统的主入口
### [YooException](/docs/api/YooAsset/YooException)
Base exception for all YooAsset custom exceptions.
### [YooHandleInvalidException](/docs/api/YooAsset/YooHandleInvalidException)
The exception that is thrown when a resource handle is invalid.
### [YooInternalException](/docs/api/YooAsset/YooInternalException)
The exception that is thrown when an internal logic error occurs in YooAsset.
### [YooManifestInvalidException](/docs/api/YooAsset/YooManifestInvalidException)
The exception that is thrown when the resource manifest data is invalid.
### [YooPackageInvalidException](/docs/api/YooAsset/YooPackageInvalidException)
The exception that is thrown when a resource package is in an invalid state.
## Structs
### [BundleDecryptArgs](/docs/api/YooAsset/BundleDecryptArgs)
资源包解密操作的输入参数
### [BundleDownloaderOptions](/docs/api/YooAsset/BundleDownloaderOptions)
按资源信息创建下载器的选项
### [BundleEncryptArgs](/docs/api/YooAsset/BundleEncryptArgs)
资源包加密操作的输入参数
### [BundleEncryptResult](/docs/api/YooAsset/BundleEncryptResult)
资源包加密操作的返回结果
### [BundleImporterOptions](/docs/api/YooAsset/BundleImporterOptions)
资源导入选项
### [ClearCacheOptions](/docs/api/YooAsset/ClearCacheOptions)
清理缓存选项
### [DownloadCompletedEventArgs](/docs/api/YooAsset/DownloadCompletedEventArgs)
下载完成事件参数
### [DownloadErrorEventArgs](/docs/api/YooAsset/DownloadErrorEventArgs)
下载错误事件参数
### [DownloadFileStartedEventArgs](/docs/api/YooAsset/DownloadFileStartedEventArgs)
开始下载单个文件事件参数
### [DownloadProgressChangedEventArgs](/docs/api/YooAsset/DownloadProgressChangedEventArgs)
下载进度更新事件参数
### [DownloadReport](/docs/api/YooAsset/DownloadReport)
下载状态报告
### [ImportBundleInfo](/docs/api/YooAsset/ImportBundleInfo)
导入的资源包信息
### [InstantiateOptions](/docs/api/YooAsset/InstantiateOptions)
游戏对象实例化选项
### [LoadPackageManifestOptions](/docs/api/YooAsset/LoadPackageManifestOptions)
加载清单选项
### [OperationAwaiter](/docs/api/YooAsset/OperationAwaiter)
支持异步编程的自定义 Awaiter
### [PrefetchManifestOptions](/docs/api/YooAsset/PrefetchManifestOptions)
预取清单选项
### [RequestPackageVersionOptions](/docs/api/YooAsset/RequestPackageVersionOptions)
请求版本选项
### [ResourceDownloaderOptions](/docs/api/YooAsset/ResourceDownloaderOptions)
按资源标签创建下载器的选项
### [ResourceUnpackerOptions](/docs/api/YooAsset/ResourceUnpackerOptions)
资源解压选项
### [UnloadAllAssetsOptions](/docs/api/YooAsset/UnloadAllAssetsOptions)
卸载所有资源的选项配置
### [UnloadUnusedAssetsOptions](/docs/api/YooAsset/UnloadUnusedAssetsOptions)
卸载未使用资源的选项配置
## Interfaces
### [IBundleDecryptor](/docs/api/YooAsset/IBundleDecryptor)
资源包解密器的基接口，本身不包含成员。
### [IBundleEncryptor](/docs/api/YooAsset/IBundleEncryptor)
定义资源包的加密行为
### [IBundleMemoryDecryptor](/docs/api/YooAsset/IBundleMemoryDecryptor)
基于内存的资源包解密器。
将整个加密数据解密为字节数组后加载。
### [IBundleOffsetDecryptor](/docs/api/YooAsset/IBundleOffsetDecryptor)
基于偏移量的资源包解密器。
用于跳过文件头部加密区域后直接加载 AssetBundle。
### [IBundleStreamDecryptor](/docs/api/YooAsset/IBundleStreamDecryptor)
基于流的资源包解密器。
通过提供解密流实现流式加载，适用于大文件场景。
### [IDownloadRetryPolicy](/docs/api/YooAsset/IDownloadRetryPolicy)
下载重试策略
### [IDownloadUrlPolicy](/docs/api/YooAsset/IDownloadUrlPolicy)
URL 选择策略
### [ILogger](/docs/api/YooAsset/ILogger)
自定义日志处理接口
### [IManifestDecryptor](/docs/api/YooAsset/IManifestDecryptor)
资源清单解密器
### [IManifestEncryptor](/docs/api/YooAsset/IManifestEncryptor)
资源清单加密器
### [IRemoteService](/docs/api/YooAsset/IRemoteService)
远端资源服务
## Enums
### [EBundleType](/docs/api/YooAsset/EBundleType)
资源包的类型
### [EFileNameStyle](/docs/api/YooAsset/EFileNameStyle)
远端资源文件命名风格
### [EFileSystemParameter](/docs/api/YooAsset/EFileSystemParameter)
文件系统参数类型定义
### [EFileVerifyLevel](/docs/api/YooAsset/EFileVerifyLevel)
文件校验等级
### [EInstallCleanupMode](/docs/api/YooAsset/EInstallCleanupMode)
覆盖安装清理模式
### [EOperationStatus](/docs/api/YooAsset/EOperationStatus)
异步操作状态枚举
### [EPlayMode](/docs/api/YooAsset/EPlayMode)
运行模式
