---
title: Interface IBuildPipeline
sidebar_label: IBuildPipeline
---
# Interface IBuildPipeline


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public interface IBuildPipeline
```
## Methods
### Run(BuildParameters, bool)
运行构建任务

```csharp title="Declaration"
BuildResult Run(BuildParameters buildParameters, bool enableLog)
```

##### Returns

[YooAsset.Editor.BuildResult](/docs/2.3.x/api/YooAsset.Editor/BuildResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildParameters](/docs/2.3.x/api/YooAsset.Editor/BuildParameters) | *buildParameters* |
| `System.Boolean` | *enableLog* |

