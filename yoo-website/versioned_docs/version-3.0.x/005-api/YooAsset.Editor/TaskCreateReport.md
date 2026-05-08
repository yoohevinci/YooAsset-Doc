---
title: Class TaskCreateReport
sidebar_label: TaskCreateReport
description: "创建构建报告的任务，将概述、资源与资源包信息序列化为报告文件。"
---
# Class TaskCreateReport
创建构建报告的任务，将概述、资源与资源包信息序列化为报告文件。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCreateReport.cs#L12)
```csharp title="Declaration"
public class TaskCreateReport
```
## Methods
### CreateReportFile(BuildParametersContext, BuildMapContext, ManifestContext)
根据构建参数、构建映射与清单上下文生成并写入构建报告文件。
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCreateReport.cs#L20)
```csharp title="Declaration"
protected void CreateReportFile(BuildParametersContext buildParametersContext, BuildMapContext buildMapContext, ManifestContext manifestContext)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParametersContext](../YooAsset.Editor/BuildParametersContext.md) | *buildParametersContext* | 构建参数上下文 |
| [YooAsset.Editor.BuildMapContext](../YooAsset.Editor/BuildMapContext.md) | *buildMapContext* | 构建映射上下文 |
| [YooAsset.Editor.ManifestContext](../YooAsset.Editor/ManifestContext.md) | *manifestContext* | 资源清单上下文 |

