---
title: Class AssetBundleRecorder
sidebar_label: AssetBundleRecorder
description: "AssetBundle 文件的加载缓存管理器"
---
# Class AssetBundleRecorder
AssetBundle 文件的加载缓存管理器

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class AssetBundleRecorder
```
## Methods
### GetAssetBundle(string)
获取 AssetBundle 对象，如果没有被缓存就重新加载。

```csharp title="Declaration"
public static AssetBundle GetAssetBundle(string filePath)
```

##### Returns

`UnityEngine.AssetBundle`: 加载到的 AssetBundle 对象，文件不存在或无效时返回 null。
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | AssetBundle 文件的完整路径 |

### UnloadAll()
卸载所有已经加载的AssetBundle文件

```csharp title="Declaration"
public static void UnloadAll()
```
