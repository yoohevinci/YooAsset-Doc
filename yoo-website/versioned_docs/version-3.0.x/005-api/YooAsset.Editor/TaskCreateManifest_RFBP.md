---
title: Class TaskCreateManifest_RFBP
sidebar_label: TaskCreateManifest_RFBP
description: "原生文件构建管线的清单创建任务"
---
# Class TaskCreateManifest_RFBP
原生文件构建管线的清单创建任务

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskCreateManifest_RFBP.cs#L11)
```csharp title="Declaration"
public class TaskCreateManifest_RFBP : TaskCreateManifest, IBuildTask
```
## Methods
### GetBundleDepends(BuildContext, string)
获取资源包的依赖集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/BuildTasks/TaskCreateManifest_RFBP.cs#L19)
```csharp title="Declaration"
protected override string[] GetBundleDepends(BuildContext context, string bundleName)
```

##### Returns

`System.String[]`: 依赖的资源包名称数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |
| `System.String` | *bundleName* | 资源包名称 |


## Implements

* [YooAsset.Editor.IBuildTask](../YooAsset.Editor/IBuildTask.md)
