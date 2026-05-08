---
title: Class BuildBundleInfo
sidebar_label: BuildBundleInfo
description: "构建资源包信息，记录单个资源包在构建过程中的完整元数据"
---
# Class BuildBundleInfo
构建资源包信息，记录单个资源包在构建过程中的完整元数据

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L12)
```csharp title="Declaration"
public class BuildBundleInfo
```
## Properties
### PackageUnityHash
Unity引擎生成的哈希值（构建内容的哈希值）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L18)
```csharp title="Declaration"
public string PackageUnityHash { get; set; }
```
### PackageUnityCRC
Unity引擎生成的CRC
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L23)
```csharp title="Declaration"
public uint PackageUnityCRC { get; set; }
```
### PackageFileHash
文件哈希值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L28)
```csharp title="Declaration"
public string PackageFileHash { get; set; }
```
### PackageFileCRC
文件 CRC 校验值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L33)
```csharp title="Declaration"
public uint PackageFileCRC { get; set; }
```
### PackageFileSize
文件大小（字节）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L38)
```csharp title="Declaration"
public long PackageFileSize { get; set; }
```
### BuildOutputFilePath
构建输出的文件路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L43)
```csharp title="Declaration"
public string BuildOutputFilePath { get; set; }
```
### PackageSourceFilePath
补丁包的源文件路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L48)
```csharp title="Declaration"
public string PackageSourceFilePath { get; set; }
```
### PackageDestFilePath
补丁包的目标文件路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L53)
```csharp title="Declaration"
public string PackageDestFilePath { get; set; }
```
### EncryptedFilePath
加密生成文件的路径
注意：如果未加密该路径为空
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L59)
```csharp title="Declaration"
public string EncryptedFilePath { get; set; }
```
### AllPackAssets
参与构建的资源列表
注意：不包含零依赖资源和冗余资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L69)
```csharp title="Declaration"
public IReadOnlyList<BuildAssetInfo> AllPackAssets { get; }
```
### BundleName
资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L77)
```csharp title="Declaration"
public string BundleName { get; }
```
### Encrypted
是否已加密
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L82)
```csharp title="Declaration"
public bool Encrypted { get; set; }
```
## Methods
### PackAsset(BuildAssetInfo)
添加一个打包资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L98)
```csharp title="Declaration"
public void PackAsset(BuildAssetInfo buildAsset)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildAssetInfo](../YooAsset.Editor/BuildAssetInfo.md) | *buildAsset* | 待打包的资源信息 |

### IsContainsPackAsset(string)
检查是否包含指定资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L113)
```csharp title="Declaration"
public bool IsContainsPackAsset(string assetPath)
```

##### Returns

`System.Boolean`: 包含返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | 资源路径 |

### GetAllPackAssetPaths()
获取构建的资源路径列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L122)
```csharp title="Declaration"
public string[] GetAllPackAssetPaths()
```

##### Returns

`System.String[]`: 所有打包资源的路径数组### GetAllPackAssetAddress()
获取构建的资源可寻址列表
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L137)
```csharp title="Declaration"
public string[] GetAllPackAssetAddress()
```

##### Returns

`System.String[]`: 所有打包资源的可寻址地址数组### GetPackAssetInfo(string)
获取构建的主资源信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L153)
```csharp title="Declaration"
public BuildAssetInfo GetPackAssetInfo(string assetPath)
```

##### Returns

[YooAsset.Editor.BuildAssetInfo](../YooAsset.Editor/BuildAssetInfo.md): 对应的构建资源信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | 资源路径 |

### GetBundleContents()
获取资源包内部所有资产
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L169)
```csharp title="Declaration"
public List<EditorAssetInfo> GetBundleContents()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.EditorAssetInfo>`: 资源包包含的所有资源信息列表### CreatePipelineBuild(bool)
创建 Unity 构建管线所需的数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L197)
```csharp title="Declaration"
public AssetBundleBuild CreatePipelineBuild(bool replaceAssetPathWithAddress)
```

##### Returns

`UnityEditor.AssetBundleBuild`: 构建管线所需的 AssetBundleBuild 数据
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *replaceAssetPathWithAddress* | 是否使用可寻址地址替代资源路径 |

### GetAllManifestAssetInfos()
获取所有写入补丁清单的资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildBundleInfo.cs#L213)
```csharp title="Declaration"
public BuildAssetInfo[] GetAllManifestAssetInfos()
```

##### Returns

`YooAsset.Editor.BuildAssetInfo[]`: 需要写入清单的主资源信息数组