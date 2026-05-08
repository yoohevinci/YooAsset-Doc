---
title: Class BundleBuilder
sidebar_label: BundleBuilder
description: "资源包构建器，负责执行完整的资源包构建流程"
---
# Class BundleBuilder
资源包构建器，负责执行完整的资源包构建流程

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class BundleBuilder
```
## Methods
### Run(BuildParameters, List&lt;IBuildTask&gt;, bool)
执行资源包构建流程

```csharp title="Declaration"
public BuildResult Run(BuildParameters buildParameters, List<IBuildTask> buildPipeline, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/3.0.x/api/YooAsset.Editor/BuildResult): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](/docs/3.0.x/api/YooAsset.Editor/BuildParameters) | *buildParameters* | 构建参数 |
| `System.Collections.Generic.List<YooAsset.Editor.IBuildTask>` | *buildPipeline* | 构建任务列表 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |

