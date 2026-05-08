---
title: Class ScriptableBuildPipeline
sidebar_label: ScriptableBuildPipeline
description: "可编程构建管线，使用 Scriptable Build Pipeline 进行构建"
---
# Class ScriptableBuildPipeline
可编程构建管线，使用 Scriptable Build Pipeline 进行构建

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ScriptableBuildPipeline : IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程

```csharp title="Declaration"
public BuildResult Run(BuildParameters buildParameters, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](../YooAsset.Editor/BuildResult.md): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |


## Implements

* [YooAsset.Editor.IBuildPipeline](../YooAsset.Editor/IBuildPipeline.md)
