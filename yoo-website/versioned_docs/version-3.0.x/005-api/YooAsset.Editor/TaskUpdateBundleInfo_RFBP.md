---
title: Class TaskUpdateBundleInfo_RFBP
sidebar_label: TaskUpdateBundleInfo_RFBP
description: "原生文件构建管线的资源包信息更新任务"
---
# Class TaskUpdateBundleInfo_RFBP
原生文件构建管线的资源包信息更新任务

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L12)
```csharp title="Declaration"
public class TaskUpdateBundleInfo_RFBP : TaskUpdateBundleInfo, IBuildTask
```
## Methods
### GetUnityHash(BuildBundleInfo, BuildContext)
获取 Unity 记录的资源包哈希值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L20)
```csharp title="Declaration"
protected override string GetUnityHash(BuildBundleInfo bundleInfo, BuildContext context)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L35)
```csharp title="Declaration"
protected override uint GetUnityCRC(BuildBundleInfo bundleInfo, BuildContext context)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L39)
```csharp title="Declaration"
protected override string GetBundleFileHash(BuildBundleInfo bundleInfo, BuildContext context)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L54)
```csharp title="Declaration"
protected override uint GetBundleFileCRC(BuildBundleInfo bundleInfo, BuildContext context)
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
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskUpdateBundleInfo_RFBP.cs#L59)
```csharp title="Declaration"
protected override long GetBundleFileSize(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.Int64`: 文件大小
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](../YooAsset.Editor/BuildBundleInfo.md) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |


## Implements

* [YooAsset.Editor.IBuildTask](../YooAsset.Editor/IBuildTask.md)
