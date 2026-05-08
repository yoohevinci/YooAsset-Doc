---
title: Class EditorAssetUtility
sidebar_label: EditorAssetUtility
description: "资源搜索工具类"
---
# Class EditorAssetUtility
资源搜索工具类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class EditorAssetUtility
```
## Methods
### FindAssets(EAssetFilterType, string[])
搜集资源

```csharp title="Declaration"
public static string[] FindAssets(EAssetFilterType filterType, string[] searchInFolders)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EAssetFilterType](/docs/3.0.x/api/YooAsset.Editor/EAssetFilterType) | *filterType* | 搜集的资源类型 |
| `System.String[]` | *searchInFolders* | 指定搜索的文件夹列表 |

### FindAssets(EAssetFilterType, string)
搜集资源

```csharp title="Declaration"
public static string[] FindAssets(EAssetFilterType filterType, string searchInFolder)
```

##### Returns

`System.String[]`: 搜集到的资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.EAssetFilterType](/docs/3.0.x/api/YooAsset.Editor/EAssetFilterType) | *filterType* | 搜集的资源类型 |
| `System.String` | *searchInFolder* | 指定搜索的文件夹 |

### FindAssets(string, string[])
搜集资源

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

