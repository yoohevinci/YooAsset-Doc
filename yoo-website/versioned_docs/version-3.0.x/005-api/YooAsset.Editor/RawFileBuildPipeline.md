---
title: Class RawFileBuildPipeline
sidebar_label: RawFileBuildPipeline
description: "原生文件构建管线，直接拷贝原始文件而不打包为 AssetBundle"
---
# Class RawFileBuildPipeline
原生文件构建管线，直接拷贝原始文件而不打包为 AssetBundle

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class RawFileBuildPipeline : IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程

```csharp title="Declaration"
public BuildResult Run(BuildParameters buildParameters, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/api/YooAsset.Editor/BuildResult): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](/docs/api/YooAsset.Editor/BuildParameters) | *buildParameters* | 构建参数 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |


## Implements

* [YooAsset.Editor.IBuildPipeline](/docs/api/YooAsset.Editor/IBuildPipeline)
