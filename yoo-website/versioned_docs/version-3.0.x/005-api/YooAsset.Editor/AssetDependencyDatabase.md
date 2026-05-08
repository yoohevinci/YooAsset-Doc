---
title: Class AssetDependencyDatabase
sidebar_label: AssetDependencyDatabase
description: "资源依赖数据库"
---
# Class AssetDependencyDatabase
资源依赖数据库

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class AssetDependencyDatabase
```
## Methods
### CreateDatabase(bool, string)
创建缓存数据库

```csharp title="Declaration"
public void CreateDatabase(bool readCacheDatabaseFile, string databaseFilePath)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *readCacheDatabaseFile* | 是否从磁盘读取已有缓存数据库文件 |
| `System.String` | *databaseFilePath* | 数据库文件路径 |

### SaveDatabase()
保存缓存数据库

```csharp title="Declaration"
public void SaveDatabase()
```
### ClearDatabase(bool)
清理缓存数据库

```csharp title="Declaration"
public void ClearDatabase(bool deleteDatabaseFile)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *deleteDatabaseFile* | 是否删除数据库文件 |

### GetDependencies(string, bool)
获取资源的依赖列表

```csharp title="Declaration"
public string[] GetDependencies(string assetPath, bool recursive)
```

##### Returns

`System.String[]`: 依赖资源路径数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | 资源路径 |
| `System.Boolean` | *recursive* | 是否递归收集依赖 |

