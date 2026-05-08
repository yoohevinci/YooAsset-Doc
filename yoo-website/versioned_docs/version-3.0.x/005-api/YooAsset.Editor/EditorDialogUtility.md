---
title: Class EditorDialogUtility
sidebar_label: EditorDialogUtility
description: "编辑器对话框与进度条工具类"
---
# Class EditorDialogUtility
编辑器对话框与进度条工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorDialogUtility.cs#L9)
```csharp title="Declaration"
public static class EditorDialogUtility
```
## Methods
### OpenFolderPanel(string, string, string)
打开文件夹选择面板
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorDialogUtility.cs#L18)
```csharp title="Declaration"
public static string OpenFolderPanel(string title, string defaultPath, string defaultName = "")
```

##### Returns

`System.String`: 选择的文件夹绝对路径，无效时为 null
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *title* | 标题名称 |
| `System.String` | *defaultPath* | 默认搜索路径 |
| `System.String` | *defaultName* | 默认文件夹名称 |

### OpenFilePath(string, string, string)
打开文件选择面板
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorDialogUtility.cs#L39)
```csharp title="Declaration"
public static string OpenFilePath(string title, string defaultPath, string extension = "")
```

##### Returns

`System.String`: 选择的文件绝对路径，无效时为 null
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *title* | 标题名称 |
| `System.String` | *defaultPath* | 默认搜索路径 |
| `System.String` | *extension* | 文件扩展名过滤 |

### DisplayProgressBar(string, int, int)
显示进度框
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorDialogUtility.cs#L59)
```csharp title="Declaration"
public static void DisplayProgressBar(string tips, int progressValue, int totalValue)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *tips* | 提示信息 |
| `System.Int32` | *progressValue* | 当前进度值 |
| `System.Int32` | *totalValue* | 总进度值 |

### ClearProgressBar()
隐藏进度框
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorDialogUtility.cs#L68)
```csharp title="Declaration"
public static void ClearProgressBar()
```
