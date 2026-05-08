# YooAsset
## Classes
### [AllAssetsHandle](/docs/3.0.x/api/YooAsset/AllAssetsHandle)
全资源句柄，用于加载资源包内所有资源对象。
### [AssetHandle](/docs/3.0.x/api/YooAsset/AssetHandle)
资源句柄，用于管理单个资源对象的加载和访问。
### [AssetInfo](/docs/3.0.x/api/YooAsset/AssetInfo)
资源信息类
### [AsyncOperationBase](/docs/3.0.x/api/YooAsset/AsyncOperationBase)
异步操作基类
### [ClearCacheMethods](/docs/3.0.x/api/YooAsset/ClearCacheMethods)
缓存清理方式标识符
### [ClearCacheOperation](/docs/3.0.x/api/YooAsset/ClearCacheOperation)
清理缓存操作
### [CustomPlayModeOptions](/docs/3.0.x/api/YooAsset/CustomPlayModeOptions)
自定义运行模式的初始化参数
### [DefaultDownloadRetryPolicy](/docs/3.0.x/api/YooAsset/DefaultDownloadRetryPolicy)
默认的下载重试策略
### [DefaultDownloadUrlPolicy](/docs/3.0.x/api/YooAsset/DefaultDownloadUrlPolicy)
默认的 URL 选择策略
### [DestroyPackageOperation](/docs/3.0.x/api/YooAsset/DestroyPackageOperation)
销毁资源包裹操作
### [DownloaderOperation](/docs/3.0.x/api/YooAsset/DownloaderOperation)
下载操作基类，提供资源下载、暂停、恢复和取消功能。
### [EditorSimulateBuildInvoker](/docs/3.0.x/api/YooAsset/EditorSimulateBuildInvoker)
编辑器模拟构建的调用入口
### [EditorSimulateModeOptions](/docs/3.0.x/api/YooAsset/EditorSimulateModeOptions)
编辑器下模拟运行模式的初始化参数
### [FileSystemParameters](/docs/3.0.x/api/YooAsset/FileSystemParameters)
提供文件系统的创建参数与工厂方法
### [HandleBase](/docs/3.0.x/api/YooAsset/HandleBase)
资源句柄基类，提供资源加载状态查询和释放功能。
### [HashUtility](/docs/3.0.x/api/YooAsset/HashUtility)
哈希工具类
### [HostPlayModeOptions](/docs/3.0.x/api/YooAsset/HostPlayModeOptions)
联机运行模式的初始化参数
### [InitializeFileSystemOperation](/docs/3.0.x/api/YooAsset/InitializeFileSystemOperation)
初始化文件系统操作
### [InitializePackageOperation](/docs/3.0.x/api/YooAsset/InitializePackageOperation)
初始化资源包裹操作
### [InitializePackageOptions](/docs/3.0.x/api/YooAsset/InitializePackageOptions)
初始化参数
### [InstantiateOperation](/docs/3.0.x/api/YooAsset/InstantiateOperation)
游戏对象实例化操作
### [LoadPackageManifestOperation](/docs/3.0.x/api/YooAsset/LoadPackageManifestOperation)
加载资源清单操作
### [OfflinePlayModeOptions](/docs/3.0.x/api/YooAsset/OfflinePlayModeOptions)
离线运行模式的初始化参数
### [PackageBuildParameters](/docs/3.0.x/api/YooAsset/PackageBuildParameters)
资源包裹构建的调用参数
### [PackageBuildResult](/docs/3.0.x/api/YooAsset/PackageBuildResult)
资源包裹构建的返回结果
### [PackageDetails](/docs/3.0.x/api/YooAsset/PackageDetails)
资源包裹的详细信息，用于外部查询包裹配置。
### [PrefetchManifestOperation](/docs/3.0.x/api/YooAsset/PrefetchManifestOperation)
预取清单操作，用于提前加载指定版本的资源清单。
### [RawFileHandle](/docs/3.0.x/api/YooAsset/RawFileHandle)
原生文件句柄，用于访问未经 Unity 处理的原始文件。
### [RawFileObject](/docs/3.0.x/api/YooAsset/RawFileObject)
原生文件对象
### [RequestPackageVersionOperation](/docs/3.0.x/api/YooAsset/RequestPackageVersionOperation)
请求包裹版本操作
### [ResourceDownloaderOperation](/docs/3.0.x/api/YooAsset/ResourceDownloaderOperation)
资源下载操作类
### [ResourceImporterOperation](/docs/3.0.x/api/YooAsset/ResourceImporterOperation)
资源导入操作类
### [ResourcePackage](/docs/3.0.x/api/YooAsset/ResourcePackage)
资源包裹类
### [ResourceUnpackerOperation](/docs/3.0.x/api/YooAsset/ResourceUnpackerOperation)
资源解压操作类
### [SceneHandle](/docs/3.0.x/api/YooAsset/SceneHandle)
场景句柄，用于管理场景的加载、激活和卸载。
### [SubAssetsHandle](/docs/3.0.x/api/YooAsset/SubAssetsHandle)
子资源句柄，用于管理资源包内子资源对象的加载和访问。
### [UnloadAllAssetsOperation](/docs/3.0.x/api/YooAsset/UnloadAllAssetsOperation)
卸载所有资源的异步操作
### [UnloadSceneOperation](/docs/3.0.x/api/YooAsset/UnloadSceneOperation)
场景卸载异步操作类
### [UnloadUnusedAssetsOperation](/docs/3.0.x/api/YooAsset/UnloadUnusedAssetsOperation)
卸载未使用资源的异步操作
### [WebPlayModeOptions](/docs/3.0.x/api/YooAsset/WebPlayModeOptions)
WebGL运行模式的初始化参数
### [YooAssetConfiguration](/docs/3.0.x/api/YooAsset/YooAssetConfiguration)
提供 YooAsset 全局配置的访问入口
### [YooAssets](/docs/3.0.x/api/YooAsset/YooAssets)
资源系统的主入口
### [YooException](/docs/3.0.x/api/YooAsset/YooException)
Base exception for all YooAsset custom exceptions.
### [YooHandleInvalidException](/docs/3.0.x/api/YooAsset/YooHandleInvalidException)
The exception that is thrown when a resource handle is invalid.
### [YooInternalException](/docs/3.0.x/api/YooAsset/YooInternalException)
The exception that is thrown when an internal logic error occurs in YooAsset.
### [YooManifestInvalidException](/docs/3.0.x/api/YooAsset/YooManifestInvalidException)
The exception that is thrown when the resource manifest data is invalid.
### [YooPackageInvalidException](/docs/3.0.x/api/YooAsset/YooPackageInvalidException)
The exception that is thrown when a resource package is in an invalid state.
## Structs
### [BundleDecryptArgs](/docs/3.0.x/api/YooAsset/BundleDecryptArgs)
资源包解密操作的输入参数
### [BundleDownloaderOptions](/docs/3.0.x/api/YooAsset/BundleDownloaderOptions)
按资源信息创建下载器的选项
### [BundleEncryptArgs](/docs/3.0.x/api/YooAsset/BundleEncryptArgs)
资源包加密操作的输入参数
### [BundleEncryptResult](/docs/3.0.x/api/YooAsset/BundleEncryptResult)
资源包加密操作的返回结果
### [BundleImporterOptions](/docs/3.0.x/api/YooAsset/BundleImporterOptions)
资源导入选项
### [ClearCacheOptions](/docs/3.0.x/api/YooAsset/ClearCacheOptions)
清理缓存选项
### [DownloadCompletedEventArgs](/docs/3.0.x/api/YooAsset/DownloadCompletedEventArgs)
下载完成事件参数
### [DownloadErrorEventArgs](/docs/3.0.x/api/YooAsset/DownloadErrorEventArgs)
下载错误事件参数
### [DownloadFileStartedEventArgs](/docs/3.0.x/api/YooAsset/DownloadFileStartedEventArgs)
开始下载单个文件事件参数
### [DownloadProgressChangedEventArgs](/docs/3.0.x/api/YooAsset/DownloadProgressChangedEventArgs)
下载进度更新事件参数
### [DownloadReport](/docs/3.0.x/api/YooAsset/DownloadReport)
下载状态报告
### [ImportBundleInfo](/docs/3.0.x/api/YooAsset/ImportBundleInfo)
导入的资源包信息
### [InstantiateOptions](/docs/3.0.x/api/YooAsset/InstantiateOptions)
游戏对象实例化选项
### [LoadPackageManifestOptions](/docs/3.0.x/api/YooAsset/LoadPackageManifestOptions)
加载清单选项
### [OperationAwaiter](/docs/3.0.x/api/YooAsset/OperationAwaiter)
支持异步编程的自定义 Awaiter
### [PrefetchManifestOptions](/docs/3.0.x/api/YooAsset/PrefetchManifestOptions)
预取清单选项
### [RequestPackageVersionOptions](/docs/3.0.x/api/YooAsset/RequestPackageVersionOptions)
请求版本选项
### [ResourceDownloaderOptions](/docs/3.0.x/api/YooAsset/ResourceDownloaderOptions)
按资源标签创建下载器的选项
### [ResourceUnpackerOptions](/docs/3.0.x/api/YooAsset/ResourceUnpackerOptions)
资源解压选项
### [UnloadAllAssetsOptions](/docs/3.0.x/api/YooAsset/UnloadAllAssetsOptions)
卸载所有资源的选项配置
### [UnloadUnusedAssetsOptions](/docs/3.0.x/api/YooAsset/UnloadUnusedAssetsOptions)
卸载未使用资源的选项配置
## Interfaces
### [IBundleDecryptor](/docs/3.0.x/api/YooAsset/IBundleDecryptor)
资源包解密器的基接口，本身不包含成员。
### [IBundleEncryptor](/docs/3.0.x/api/YooAsset/IBundleEncryptor)
定义资源包的加密行为
### [IBundleMemoryDecryptor](/docs/3.0.x/api/YooAsset/IBundleMemoryDecryptor)
基于内存的资源包解密器。
将整个加密数据解密为字节数组后加载。
### [IBundleOffsetDecryptor](/docs/3.0.x/api/YooAsset/IBundleOffsetDecryptor)
基于偏移量的资源包解密器。
用于跳过文件头部加密区域后直接加载 AssetBundle。
### [IBundleStreamDecryptor](/docs/3.0.x/api/YooAsset/IBundleStreamDecryptor)
基于流的资源包解密器。
通过提供解密流实现流式加载，适用于大文件场景。
### [IDownloadRetryPolicy](/docs/3.0.x/api/YooAsset/IDownloadRetryPolicy)
下载重试策略
### [IDownloadUrlPolicy](/docs/3.0.x/api/YooAsset/IDownloadUrlPolicy)
URL 选择策略
### [ILogger](/docs/3.0.x/api/YooAsset/ILogger)
自定义日志处理接口
### [IManifestDecryptor](/docs/3.0.x/api/YooAsset/IManifestDecryptor)
资源清单解密器
### [IManifestEncryptor](/docs/3.0.x/api/YooAsset/IManifestEncryptor)
资源清单加密器
### [IRemoteService](/docs/3.0.x/api/YooAsset/IRemoteService)
远端资源服务
## Enums
### [EBundleType](/docs/3.0.x/api/YooAsset/EBundleType)
资源包的类型
### [EFileNameStyle](/docs/3.0.x/api/YooAsset/EFileNameStyle)
远端资源文件命名风格
### [EFileSystemParameter](/docs/3.0.x/api/YooAsset/EFileSystemParameter)
文件系统参数类型定义
### [EFileVerifyLevel](/docs/3.0.x/api/YooAsset/EFileVerifyLevel)
文件校验等级
### [EInstallCleanupMode](/docs/3.0.x/api/YooAsset/EInstallCleanupMode)
覆盖安装清理模式
### [EOperationStatus](/docs/3.0.x/api/YooAsset/EOperationStatus)
异步操作状态枚举
### [EPlayMode](/docs/3.0.x/api/YooAsset/EPlayMode)
运行模式
