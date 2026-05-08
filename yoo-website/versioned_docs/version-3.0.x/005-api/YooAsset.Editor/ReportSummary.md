---
title: Class ReportSummary
sidebar_label: ReportSummary
description: "构建报告的汇总信息"
---
# Class ReportSummary
构建报告的汇总信息

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L11)
```csharp title="Declaration"
[Serializable]
public class ReportSummary
```
## Fields
### YooVersion
YooAsset 版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L17)
```csharp title="Declaration"
public string YooVersion
```
### UnityVersion
引擎版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L22)
```csharp title="Declaration"
public string UnityVersion
```
### BuildDate
构建时间
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L27)
```csharp title="Declaration"
public string BuildDate
```
### BuildSeconds
构建耗时（单位：秒）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L32)
```csharp title="Declaration"
public int BuildSeconds
```
### BuildTarget
构建平台
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L37)
```csharp title="Declaration"
public BuildTarget BuildTarget
```
### BuildPipeline
构建管线
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L42)
```csharp title="Declaration"
public string BuildPipeline
```
### BuildBundleType
构建的资源包类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L47)
```csharp title="Declaration"
public int BuildBundleType
```
### BuildPackageName
构建包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L52)
```csharp title="Declaration"
public string BuildPackageName
```
### BuildPackageVersion
构建包裹版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L57)
```csharp title="Declaration"
public string BuildPackageVersion
```
### BuildPackageNote
构建包裹备注
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L62)
```csharp title="Declaration"
public string BuildPackageNote
```
### UniqueBundleName
是否启用唯一资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L68)
```csharp title="Declaration"
public bool UniqueBundleName
```
### EnableAddressable
是否启用可寻址功能
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L73)
```csharp title="Declaration"
public bool EnableAddressable
```
### SupportExtensionless
是否支持无扩展名加载
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L78)
```csharp title="Declaration"
public bool SupportExtensionless
```
### LocationToLower
是否将资源定位地址转为小写
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L83)
```csharp title="Declaration"
public bool LocationToLower
```
### IncludeAssetGuid
是否在清单中包含资源 Guid
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L88)
```csharp title="Declaration"
public bool IncludeAssetGuid
```
### AutoCollectShaders
是否自动收集 Shader 资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L93)
```csharp title="Declaration"
public bool AutoCollectShaders
```
### IgnoreRuleName
忽略规则名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L98)
```csharp title="Declaration"
public string IgnoreRuleName
```
### ClearBuildCacheFiles
是否清除构建缓存文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L105)
```csharp title="Declaration"
public bool ClearBuildCacheFiles
```
### UseAssetDependencyDB
是否使用资源依赖数据库
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L110)
```csharp title="Declaration"
public bool UseAssetDependencyDB
```
### EnableSharePackRule
是否启用共享资源打包规则
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L115)
```csharp title="Declaration"
public bool EnableSharePackRule
```
### SingleReferencedPackAlone
是否将单引用资源独立打包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L120)
```csharp title="Declaration"
public bool SingleReferencedPackAlone
```
### EncryptionServicesClassName
加密服务类名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L125)
```csharp title="Declaration"
public string EncryptionServicesClassName
```
### ManifestProcessServicesClassName
清单处理服务类名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L130)
```csharp title="Declaration"
public string ManifestProcessServicesClassName
```
### ManifestRestoreServicesClassName
清单还原服务类名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L135)
```csharp title="Declaration"
public string ManifestRestoreServicesClassName
```
### FileNameStyle
文件名称样式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L140)
```csharp title="Declaration"
public EFileNameStyle FileNameStyle
```
### CompressOption
压缩选项
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L147)
```csharp title="Declaration"
public ECompressOption CompressOption
```
### DisableWriteTypeTree
是否禁用写入类型树
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L152)
```csharp title="Declaration"
public bool DisableWriteTypeTree
```
### IgnoreTypeTreeChanges
是否忽略类型树变化
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L157)
```csharp title="Declaration"
public bool IgnoreTypeTreeChanges
```
### ReplaceAssetPathWithAddress
是否使用可寻址地址替换资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L162)
```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress
```
### WriteLinkXML
是否写入 link.xml
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L167)
```csharp title="Declaration"
public bool WriteLinkXML
```
### CacheServerHost
缓存服务器地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L172)
```csharp title="Declaration"
public string CacheServerHost
```
### CacheServerPort
缓存服务器端口
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L177)
```csharp title="Declaration"
public int CacheServerPort
```
### BuiltinShadersBundleName
内置 Shader 资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L182)
```csharp title="Declaration"
public string BuiltinShadersBundleName
```
### MonoScriptsBundleName
MonoScript 资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L187)
```csharp title="Declaration"
public string MonoScriptsBundleName
```
### AssetFileTotalCount
资源文件总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L194)
```csharp title="Declaration"
public int AssetFileTotalCount
```
### MainAssetTotalCount
主资源总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L199)
```csharp title="Declaration"
public int MainAssetTotalCount
```
### AllBundleTotalCount
全部资源包总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L204)
```csharp title="Declaration"
public int AllBundleTotalCount
```
### AllBundleTotalSize
全部资源包总大小（字节数）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L209)
```csharp title="Declaration"
public long AllBundleTotalSize
```
### EncryptedBundleTotalCount
加密资源包总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L214)
```csharp title="Declaration"
public int EncryptedBundleTotalCount
```
### EncryptedBundleTotalSize
加密资源包总大小（字节数）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleReporter/ReportSummary.cs#L219)
```csharp title="Declaration"
public long EncryptedBundleTotalSize
```
