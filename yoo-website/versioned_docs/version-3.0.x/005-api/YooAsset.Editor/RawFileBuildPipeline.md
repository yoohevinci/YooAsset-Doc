---
title: Class RawFileBuildPipeline
sidebar_label: RawFileBuildPipeline
description: "原生文件构建管线，直接拷贝原始文件而不打包为 AssetBundle"
---
# Class RawFileBuildPipeline
原生文件构建管线，直接拷贝原始文件而不打包为 AssetBundle

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/RawFileBuildPipeline.cs#L13)
```csharp title="Declaration"
public class RawFileBuildPipeline : IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/RawFileBuildPipeline/RawFileBuildPipeline.cs#L21)
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
