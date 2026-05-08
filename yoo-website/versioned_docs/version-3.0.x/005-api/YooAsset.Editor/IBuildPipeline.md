---
title: Interface IBuildPipeline
sidebar_label: IBuildPipeline
description: "构建管线接口，定义构建流程的标准入口"
---
# Interface IBuildPipeline
构建管线接口，定义构建流程的标准入口

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public interface IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
执行构建流程

```csharp title="Declaration"
BuildResult Run(BuildParameters buildParameters, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/3.0.x/api/YooAsset.Editor/BuildResult): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](/docs/3.0.x/api/YooAsset.Editor/BuildParameters) | *buildParameters* | 构建参数 |
| `System.Boolean` | *enableLog* | 是否启用日志记录 |

