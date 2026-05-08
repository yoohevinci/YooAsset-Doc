---
title: Class LegacyBuildPipeline
sidebar_label: LegacyBuildPipeline
description: "旧版构建管线，使用 Unity 内置的 AssetBundle 构建接口"
---
# Class LegacyBuildPipeline
旧版构建管线，使用 Unity 内置的 AssetBundle 构建接口

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class LegacyBuildPipeline : IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程

```csharp title="Declaration"
public BuildResult Run(BuildParameters buildParameters, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/3.0.x/api/YooAsset.Editor/BuildResult): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](/docs/3.0.x/api/YooAsset.Editor/BuildParameters) | *buildParameters* | 构建参数 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |


## Implements

* [YooAsset.Editor.IBuildPipeline](/docs/3.0.x/api/YooAsset.Editor/IBuildPipeline)
