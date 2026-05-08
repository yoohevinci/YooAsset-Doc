---
title: Class BundleBuilder
sidebar_label: BundleBuilder
description: "资源包构建器，负责执行完整的资源包构建流程"
---
# Class BundleBuilder
资源包构建器，负责执行完整的资源包构建流程

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BundleBuilder.cs#L14)
```csharp title="Declaration"
public class BundleBuilder
```
## Methods
### Run(BuildParameters, List&lt;IBuildTask&gt;, bool)
执行资源包构建流程
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BundleBuilder.cs#L25)
```csharp title="Declaration"
public BuildResult Run(BuildParameters buildParameters, List<IBuildTask> buildPipeline, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](../YooAsset.Editor/BuildResult.md): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |
| `System.Collections.Generic.List<YooAsset.Editor.IBuildTask>` | *buildPipeline* | 构建任务列表 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |

