---
title: Class BuildRunner
sidebar_label: BuildRunner
description: "构建任务运行器，按顺序执行构建管线中的所有任务"
---
# Class BuildRunner
构建任务运行器，按顺序执行构建管线中的所有任务

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class BuildRunner
```
## Properties
### TotalSeconds
构建流程的总耗时（秒）

```csharp title="Declaration"
public static int TotalSeconds { get; }
```
## Methods
### Run(List&lt;IBuildTask&gt;, BuildContext)
执行构建流程

```csharp title="Declaration"
public static BuildResult Run(List<IBuildTask> pipeline, BuildContext context)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/3.0.x/api/YooAsset.Editor/BuildResult): 构建结果，包含成功状态和错误信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.List<YooAsset.Editor.IBuildTask>` | *pipeline* | 构建任务列表 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |

