---
title: Class TaskUpdateBundleInfo
sidebar_label: TaskUpdateBundleInfo
description: "更新资源包构建信息的任务抽象基类，用于填充哈希、CRC、大小及输出路径等字段。"
---
# Class TaskUpdateBundleInfo
更新资源包构建信息的任务抽象基类，用于填充哈希、CRC、大小及输出路径等字段。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L13)
```csharp title="Declaration"
public abstract class TaskUpdateBundleInfo
```
## Methods
### UpdateBundleInfo(BuildContext)
根据构建上下文更新所有资源包的路径与校验信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L19)
```csharp title="Declaration"
public void UpdateBundleInfo(BuildContext context)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetUnityHash(BuildBundleInfo, BuildContext)
获取 Unity 记录的资源包哈希值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L76)
```csharp title="Declaration"
protected abstract string GetUnityHash(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.String`: Unity 哈希字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetUnityCRC(BuildBundleInfo, BuildContext)
获取 Unity 记录的资源包 CRC
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L84)
```csharp title="Declaration"
protected abstract uint GetUnityCRC(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.UInt32`: Unity CRC 值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetBundleFileHash(BuildBundleInfo, BuildContext)
获取资源包文件的哈希值（用于远端文件名等）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L92)
```csharp title="Declaration"
protected abstract string GetBundleFileHash(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.String`: 文件哈希字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetBundleFileCRC(BuildBundleInfo, BuildContext)
获取资源包文件的 CRC
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L100)
```csharp title="Declaration"
protected abstract uint GetBundleFileCRC(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.UInt32`: 文件 CRC 值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetBundleFileSize(BuildBundleInfo, BuildContext)
获取资源包文件大小（字节）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskUpdateBundleInfo.cs#L108)
```csharp title="Declaration"
protected abstract long GetBundleFileSize(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.Int64`: 文件大小
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

