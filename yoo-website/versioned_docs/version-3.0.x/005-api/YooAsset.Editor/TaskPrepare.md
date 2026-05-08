---
title: Class TaskPrepare
sidebar_label: TaskPrepare
description: "构建准备任务的基类，提供各管线共用的准备阶段方法。"
---
# Class TaskPrepare
构建准备任务的基类，提供各管线共用的准备阶段方法。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskPrepare.cs#L10)
```csharp title="Declaration"
public class TaskPrepare
```
## Methods
### CheckDirtyScenes()
检测是否有未保存的场景
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskPrepare.cs#L15)
```csharp title="Declaration"
protected void CheckDirtyScenes()
```
### DeletePackageRootDirectory(BuildParameters)
删除包裹根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskPrepare.cs#L27)
```csharp title="Declaration"
protected void DeletePackageRootDirectory(BuildParameters buildParameters)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* |

### PrepareOutputDirectory(BuildParameters)
检测包裹输出目录是否已存在，并创建管线输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskPrepare.cs#L39)
```csharp title="Declaration"
protected void PrepareOutputDirectory(BuildParameters buildParameters)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* |

