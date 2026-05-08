---
title: Interface IBuildTask
sidebar_label: IBuildTask
description: "构建任务的标准接口"
---
# Interface IBuildTask
构建任务的标准接口

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildSystem/IBuildTask.cs#L7)
```csharp title="Declaration"
public interface IBuildTask
```
## Methods
### Run(BuildContext)
执行构建任务
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildSystem/IBuildTask.cs#L13)
```csharp title="Declaration"
void Run(BuildContext context)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

