---
title: Class LegacyBuildPipeline
sidebar_label: LegacyBuildPipeline
description: "旧版构建管线，使用 Unity 内置的 AssetBundle 构建接口"
---
# Class LegacyBuildPipeline
旧版构建管线，使用 Unity 内置的 AssetBundle 构建接口

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/LegacyBuildPipeline/LegacyBuildPipeline.cs#L10)
```csharp title="Declaration"
public class LegacyBuildPipeline : IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/LegacyBuildPipeline/LegacyBuildPipeline.cs#L18)
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
