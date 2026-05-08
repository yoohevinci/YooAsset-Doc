---
title: Class EditorFileUtility
sidebar_label: EditorFileUtility
description: "文件操作工具类"
---
# Class EditorFileUtility
文件操作工具类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class EditorFileUtility
```
## Methods
### CreateFileDirectory(string)
创建文件所在的目录

```csharp title="Declaration"
public static void CreateFileDirectory(string filePath)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 文件路径 |

### CreateDirectory(string)
创建文件夹

```csharp title="Declaration"
public static bool CreateDirectory(string directory)
```

##### Returns

`System.Boolean`: 文件夹不存在并成功创建时为 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *directory* | 文件夹路径 |

### DeleteDirectory(string)
删除文件夹及子目录

```csharp title="Declaration"
public static bool DeleteDirectory(string directory)
```

##### Returns

`System.Boolean`: 文件夹存在并成功删除时为 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *directory* | 文件夹路径 |

### FileRename(string, string)
文件重命名

```csharp title="Declaration"
public static void FileRename(string filePath, string newName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 原文件路径 |
| `System.String` | *newName* | 新文件名（不含扩展名） |

### MoveFile(string, string)
移动文件

```csharp title="Declaration"
public static void MoveFile(string filePath, string destPath)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 源文件路径 |
| `System.String` | *destPath* | 目标文件路径 |

### CopyFile(string, string, bool)
拷贝文件

```csharp title="Declaration"
public static void CopyFile(string sourcePath, string destPath, bool overwrite)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *sourcePath* | 源文件路径 |
| `System.String` | *destPath* | 目标文件路径 |
| `System.Boolean` | *overwrite* | 是否覆盖已存在的文件 |

### GetFileSize(string)
获取文件字节大小

```csharp title="Declaration"
public static long GetFileSize(string filePath)
```

##### Returns

`System.Int64`: 文件的字节大小
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 文件路径 |

### ReadFileAllText(string)
读取文件的所有文本内容

```csharp title="Declaration"
public static string ReadFileAllText(string filePath)
```

##### Returns

`System.String`: 文件的文本内容，文件不存在时为空字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 文件路径 |

### ReadFileAllLine(string)
读取文件的所有文本行

```csharp title="Declaration"
public static string[] ReadFileAllLine(string filePath)
```

##### Returns

`System.String[]`: 文件的所有文本行，文件不存在时为空数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 文件路径 |

### CheckBundleFileValid(byte[])
检测 AssetBundle 文件是否合法

```csharp title="Declaration"
public static bool CheckBundleFileValid(byte[] fileData)
```

##### Returns

`System.Boolean`: 文件签名合法时为 true
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Byte[]` | *fileData* | 文件的字节数据 |

