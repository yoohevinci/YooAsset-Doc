---
title: Class EditorSimulateBuildPipeline
sidebar_label: EditorSimulateBuildPipeline
description: "编辑器模拟构建管线，用于编辑器下模拟资源加载"
---
# Class EditorSimulateBuildPipeline
编辑器模拟构建管线，用于编辑器下模拟资源加载

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class EditorSimulateBuildPipeline : IBuildPipeline
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
