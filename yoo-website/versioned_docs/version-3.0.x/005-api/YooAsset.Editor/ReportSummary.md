---
title: Class ReportSummary
sidebar_label: ReportSummary
description: "构建报告的汇总信息"
---
# Class ReportSummary
构建报告的汇总信息

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[Serializable]
public class ReportSummary
```
## Fields
### YooVersion
YooAsset 版本

```csharp title="Declaration"
public string YooVersion
```
### UnityVersion
引擎版本

```csharp title="Declaration"
public string UnityVersion
```
### BuildDate
构建时间

```csharp title="Declaration"
public string BuildDate
```
### BuildSeconds
构建耗时（单位：秒）

```csharp title="Declaration"
public int BuildSeconds
```
### BuildTarget
构建平台

```csharp title="Declaration"
public BuildTarget BuildTarget
```
### BuildPipeline
构建管线

```csharp title="Declaration"
public string BuildPipeline
```
### BuildBundleType
构建的资源包类型

```csharp title="Declaration"
public int BuildBundleType
```
### BuildPackageName
构建包裹名称

```csharp title="Declaration"
public string BuildPackageName
```
### BuildPackageVersion
构建包裹版本

```csharp title="Declaration"
public string BuildPackageVersion
```
### BuildPackageNote
构建包裹备注

```csharp title="Declaration"
public string BuildPackageNote
```
### UniqueBundleName
是否启用唯一资源包名称

```csharp title="Declaration"
public bool UniqueBundleName
```
### EnableAddressable
是否启用可寻址功能

```csharp title="Declaration"
public bool EnableAddressable
```
### SupportExtensionless
是否支持无扩展名加载

```csharp title="Declaration"
public bool SupportExtensionless
```
### LocationToLower
是否将资源定位地址转为小写

```csharp title="Declaration"
public bool LocationToLower
```
### IncludeAssetGuid
是否在清单中包含资源 Guid

```csharp title="Declaration"
public bool IncludeAssetGuid
```
### AutoCollectShaders
是否自动收集 Shader 资源

```csharp title="Declaration"
public bool AutoCollectShaders
```
### IgnoreRuleName
忽略规则名称

```csharp title="Declaration"
public string IgnoreRuleName
```
### ClearBuildCacheFiles
是否清除构建缓存文件

```csharp title="Declaration"
public bool ClearBuildCacheFiles
```
### UseAssetDependencyDB
是否使用资源依赖数据库

```csharp title="Declaration"
public bool UseAssetDependencyDB
```
### EnableSharePackRule
是否启用共享资源打包规则

```csharp title="Declaration"
public bool EnableSharePackRule
```
### SingleReferencedPackAlone
是否将单引用资源独立打包

```csharp title="Declaration"
public bool SingleReferencedPackAlone
```
### EncryptionServicesClassName
加密服务类名称

```csharp title="Declaration"
public string EncryptionServicesClassName
```
### ManifestProcessServicesClassName
清单处理服务类名称

```csharp title="Declaration"
public string ManifestProcessServicesClassName
```
### ManifestRestoreServicesClassName
清单还原服务类名称

```csharp title="Declaration"
public string ManifestRestoreServicesClassName
```
### FileNameStyle
文件名称样式

```csharp title="Declaration"
public EFileNameStyle FileNameStyle
```
### CompressOption
压缩选项

```csharp title="Declaration"
public ECompressOption CompressOption
```
### DisableWriteTypeTree
是否禁用写入类型树

```csharp title="Declaration"
public bool DisableWriteTypeTree
```
### IgnoreTypeTreeChanges
是否忽略类型树变化

```csharp title="Declaration"
public bool IgnoreTypeTreeChanges
```
### ReplaceAssetPathWithAddress
是否使用可寻址地址替换资源路径

```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress
```
### WriteLinkXML
是否写入 link.xml

```csharp title="Declaration"
public bool WriteLinkXML
```
### CacheServerHost
缓存服务器地址

```csharp title="Declaration"
public string CacheServerHost
```
### CacheServerPort
缓存服务器端口

```csharp title="Declaration"
public int CacheServerPort
```
### BuiltinShadersBundleName
内置 Shader 资源包名称

```csharp title="Declaration"
public string BuiltinShadersBundleName
```
### MonoScriptsBundleName
MonoScript 资源包名称

```csharp title="Declaration"
public string MonoScriptsBundleName
```
### AssetFileTotalCount
资源文件总数

```csharp title="Declaration"
public int AssetFileTotalCount
```
### MainAssetTotalCount
主资源总数

```csharp title="Declaration"
public int MainAssetTotalCount
```
### AllBundleTotalCount
全部资源包总数

```csharp title="Declaration"
public int AllBundleTotalCount
```
### AllBundleTotalSize
全部资源包总大小（字节数）

```csharp title="Declaration"
public long AllBundleTotalSize
```
### EncryptedBundleTotalCount
加密资源包总数

```csharp title="Declaration"
public int EncryptedBundleTotalCount
```
### EncryptedBundleTotalSize
加密资源包总大小（字节数）

```csharp title="Declaration"
public long EncryptedBundleTotalSize
```
