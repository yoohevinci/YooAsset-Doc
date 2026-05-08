---
title: Class YooAssetConfiguration
sidebar_label: YooAssetConfiguration
description: "提供 YooAsset 全局配置的访问入口"
---
# Class YooAssetConfiguration
提供 YooAsset 全局配置的访问入口

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L10)
```csharp title="Declaration"
public static class YooAssetConfiguration
```
## Methods
### GetYooFolderName()
获取资源包裹的根文件夹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L55)
```csharp title="Declaration"
public static string GetYooFolderName()
```

##### Returns

`System.String`: 文件夹名称。如果未配置则返回默认值 "yoo"。### GetBuildReportFileName(string, string)
获取构建报告的文件名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L66)
```csharp title="Declaration"
public static string GetBuildReportFileName(string packageName, string packageVersion)
```

##### Returns

`System.String`: 包含 .report 扩展名的文件名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *packageVersion* | 包裹版本号 |

### GetManifestBinaryFileName(string, string)
获取清单二进制文件的文件名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L86)
```csharp title="Declaration"
public static string GetManifestBinaryFileName(string packageName, string packageVersion)
```

##### Returns

`System.String`: 包含 .bytes 扩展名的文件名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *packageVersion* | 包裹版本号 |

### GetManifestJsonFileName(string, string)
获取清单 JSON 文件的文件名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L106)
```csharp title="Declaration"
public static string GetManifestJsonFileName(string packageName, string packageVersion)
```

##### Returns

`System.String`: 包含 .json 扩展名的文件名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *packageVersion* | 包裹版本号 |

### GetPackageHashFileName(string, string)
获取包裹的哈希校验文件名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L126)
```csharp title="Declaration"
public static string GetPackageHashFileName(string packageName, string packageVersion)
```

##### Returns

`System.String`: 包含 .hash 扩展名的文件名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.String` | *packageVersion* | 包裹版本号 |

### GetPackageVersionFileName(string)
获取包裹的版本记录文件名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Settings/YooAssetConfiguration.cs#L145)
```csharp title="Declaration"
public static string GetPackageVersionFileName(string packageName)
```

##### Returns

`System.String`: 包含 .version 扩展名的文件名
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |

