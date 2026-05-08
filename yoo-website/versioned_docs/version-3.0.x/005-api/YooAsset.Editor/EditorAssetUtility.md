---
title: Class EditorAssetUtility
sidebar_label: EditorAssetUtility
description: "资源搜索工具类"
---
# Class EditorAssetUtility
资源搜索工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssetUtility.cs#L11)
```csharp title="Declaration"
public static class EditorAssetUtility
```
## Methods
### FindAssets(EAssetFilterType, string[])
搜集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssetUtility.cs#L19)
```csharp title="Declaration"
public static string[] FindAssets(EAssetFilterType filterType, string[] searchInFolders)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EAssetFilterType](../YooAsset.Editor/EAssetFilterType.md) | *filterType* | 搜集的资源类型 |
| `System.String[]` | *searchInFolders* | 指定搜索的文件夹列表 |

### FindAssets(EAssetFilterType, string)
搜集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssetUtility.cs#L30)
```csharp title="Declaration"
public static string[] FindAssets(EAssetFilterType filterType, string searchInFolder)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EAssetFilterType](../YooAsset.Editor/EAssetFilterType.md) | *filterType* | 搜集的资源类型 |
| `System.String` | *searchInFolder* | 指定搜索的文件夹 |

### FindAssets(string, string[])
搜集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssetUtility.cs#L41)
```csharp title="Declaration"
public static string[] FindAssets(string filterType, string[] searchInFolders)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filterType* | 搜集的资源类型 |
| `System.String[]` | *searchInFolders* | 指定搜索的文件夹列表 |

### FindAssets(string, string)
搜集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssetUtility.cs#L81)
```csharp title="Declaration"
public static string[] FindAssets(string filterType, string searchInFolder)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filterType* | 搜集的资源类型 |
| `System.String` | *searchInFolder* | 指定搜索的文件夹 |

