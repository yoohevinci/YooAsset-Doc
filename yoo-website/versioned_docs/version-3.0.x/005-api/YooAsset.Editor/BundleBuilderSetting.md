---
title: Class BundleBuilderSetting
sidebar_label: BundleBuilderSetting
description: "资源包构建器的持久化设置"
---
# Class BundleBuilderSetting
资源包构建器的持久化设置

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class BundleBuilderSetting
```
## Methods
### GetPackageBuildPipeline(string)
获取包裹的构建管线名称

```csharp title="Declaration"
public static string GetPackageBuildPipeline(string packageName)
```

##### Returns

`System.String`: 构建管线名称
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

### SetPackageBuildPipeline(string, string)
设置包裹的构建管线名称

```csharp title="Declaration"
public static void SetPackageBuildPipeline(string packageName, string buildPipeline)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### GetPackageCompressOption(string, string)
获取包裹的压缩选项

```csharp title="Declaration"
public static ECompressOption GetPackageCompressOption(string packageName, string buildPipeline)
```

##### Returns

[YooAsset.Editor.ECompressOption](../YooAsset.Editor/ECompressOption.md): 压缩选项
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageCompressOption(string, string, ECompressOption)
设置包裹的压缩选项

```csharp title="Declaration"
public static void SetPackageCompressOption(string packageName, string buildPipeline, ECompressOption compressOption)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| [YooAsset.Editor.ECompressOption](../YooAsset.Editor/ECompressOption.md) | *compressOption* | 压缩选项 |

### GetPackageFileNameStyle(string, string)
获取包裹的文件名样式

```csharp title="Declaration"
public static EFileNameStyle GetPackageFileNameStyle(string packageName, string buildPipeline)
```

##### Returns

[YooAsset.EFileNameStyle](../YooAsset/EFileNameStyle.md): 文件名样式
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageFileNameStyle(string, string, EFileNameStyle)
设置包裹的文件名样式

```csharp title="Declaration"
public static void SetPackageFileNameStyle(string packageName, string buildPipeline, EFileNameStyle fileNameStyle)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| [YooAsset.EFileNameStyle](../YooAsset/EFileNameStyle.md) | *fileNameStyle* | 文件名样式 |

### GetPackageBundledCopyOption(string, string)
获取包裹的首包资源的拷贝选项

```csharp title="Declaration"
public static EBundledCopyOption GetPackageBundledCopyOption(string packageName, string buildPipeline)
```

##### Returns

[YooAsset.Editor.EBundledCopyOption](../YooAsset.Editor/EBundledCopyOption.md): 首包资源的拷贝选项
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageBundledCopyOption(string, string, EBundledCopyOption)
设置包裹的首包资源的拷贝选项

```csharp title="Declaration"
public static void SetPackageBundledCopyOption(string packageName, string buildPipeline, EBundledCopyOption bundledCopyOption)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| [YooAsset.Editor.EBundledCopyOption](../YooAsset.Editor/EBundledCopyOption.md) | *bundledCopyOption* | 首包资源的拷贝选项 |

### GetPackageBundledCopyParams(string, string)
获取包裹的首包资源的拷贝参数

```csharp title="Declaration"
public static string GetPackageBundledCopyParams(string packageName, string buildPipeline)
```

##### Returns

`System.String`: 首包资源的拷贝参数字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageBundledCopyParams(string, string, string)
设置包裹的首包资源的拷贝参数

```csharp title="Declaration"
public static void SetPackageBundledCopyParams(string packageName, string buildPipeline, string bundledCopyParams)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.String` | *bundledCopyParams* | 首包资源的拷贝参数字符串 |

### GetPackageBundleEncryptorClassName(string, string)
获取包裹的资源包加密器类名

```csharp title="Declaration"
public static string GetPackageBundleEncryptorClassName(string packageName, string buildPipeline)
```

##### Returns

`System.String`: 资源包加密器的完整类名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageBundleEncryptorClassName(string, string, string)
设置包裹的资源包加密器类名

```csharp title="Declaration"
public static void SetPackageBundleEncryptorClassName(string packageName, string buildPipeline, string encryptorClassName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.String` | *encryptorClassName* | 资源包加密器的完整类名 |

### GetPackageManifestEncryptorClassName(string, string)
获取包裹的资源清单加密器类名

```csharp title="Declaration"
public static string GetPackageManifestEncryptorClassName(string packageName, string buildPipeline)
```

##### Returns

`System.String`: 资源清单加密器的完整类名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageManifestEncryptorClassName(string, string, string)
设置包裹的资源清单加密器类名

```csharp title="Declaration"
public static void SetPackageManifestEncryptorClassName(string packageName, string buildPipeline, string encryptionClassName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.String` | *encryptionClassName* | 资源清单加密器的完整类名 |

### GetPackageManifestDecryptorClassName(string, string)
获取包裹的资源清单解密器类名

```csharp title="Declaration"
public static string GetPackageManifestDecryptorClassName(string packageName, string buildPipeline)
```

##### Returns

`System.String`: 资源清单解密器的完整类名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageManifestDecryptorClassName(string, string, string)
设置包裹的资源清单解密器类名

```csharp title="Declaration"
public static void SetPackageManifestDecryptorClassName(string packageName, string buildPipeline, string encryptionClassName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.String` | *encryptionClassName* | 资源清单解密器的完整类名 |

### GetPackageClearBuildCache(string, string)
获取包裹的清空构建缓存选项

```csharp title="Declaration"
public static bool GetPackageClearBuildCache(string packageName, string buildPipeline)
```

##### Returns

`System.Boolean`: 是否清空构建缓存
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageClearBuildCache(string, string, bool)
设置包裹的清空构建缓存选项

```csharp title="Declaration"
public static void SetPackageClearBuildCache(string packageName, string buildPipeline, bool clearBuildCache)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.Boolean` | *clearBuildCache* | 是否清空构建缓存 |

### GetPackageUseAssetDependencyDB(string, string)
获取包裹的资源依赖缓存数据库选项

```csharp title="Declaration"
public static bool GetPackageUseAssetDependencyDB(string packageName, string buildPipeline)
```

##### Returns

`System.Boolean`: 是否使用资源依赖缓存数据库
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |

### SetPackageUseAssetDependencyDB(string, string, bool)
设置包裹的资源依赖缓存数据库选项

```csharp title="Declaration"
public static void SetPackageUseAssetDependencyDB(string packageName, string buildPipeline, bool useAssetDependencyDB)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *buildPipeline* | 构建管线名称 |
| `System.Boolean` | *useAssetDependencyDB* | 是否使用资源依赖缓存数据库 |

