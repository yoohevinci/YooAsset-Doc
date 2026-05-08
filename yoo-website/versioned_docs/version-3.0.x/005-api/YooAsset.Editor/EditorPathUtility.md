---
title: Class EditorPathUtility
sidebar_label: EditorPathUtility
description: "路径工具类"
---
# Class EditorPathUtility
路径工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L9)
```csharp title="Declaration"
public static class EditorPathUtility
```
## Methods
### GetRegularPath(string)
获取规范的路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L16)
```csharp title="Declaration"
public static string GetRegularPath(string path)
```

##### Returns

`System.String`: 使用正斜杠分隔的规范路径
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *path* | 原始路径 |

### RemoveExtension(string)
移除路径里的后缀名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L28)
```csharp title="Declaration"
public static string RemoveExtension(string path)
```

##### Returns

`System.String`: 去除扩展名后的路径
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *path* | 原始路径 |

### GetProjectPath()
获取项目工程路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L46)
```csharp title="Declaration"
public static string GetProjectPath()
```

##### Returns

`System.String`: 项目根目录的规范路径### AbsolutePathToAssetPath(string)
转换文件的绝对路径为 Unity 资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L60)
```csharp title="Declaration"
public static string AbsolutePathToAssetPath(string absolutePath)
```

##### Returns

`System.String`: 以 Assets/ 开头的 Unity 资源路径
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *absolutePath* | 文件的绝对路径 |

### AssetPathToAbsolutePath(string)
转换 Unity 资源路径为文件的绝对路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorPathUtility.cs#L74)
```csharp title="Declaration"
public static string AssetPathToAbsolutePath(string assetPath)
```

##### Returns

`System.String`: 文件的绝对路径
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | Unity 资源路径 |

