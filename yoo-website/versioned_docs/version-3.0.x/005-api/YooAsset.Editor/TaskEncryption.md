---
title: Class TaskEncryption
sidebar_label: TaskEncryption
description: "资源包加密任务，在管线输出目录对资源包文件执行加密并记录加密路径。"
---
# Class TaskEncryption
资源包加密任务，在管线输出目录对资源包文件执行加密并记录加密路径。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskEncryption.cs#L12)
```csharp title="Declaration"
public class TaskEncryption
```
## Methods
### EncryptingBundleFiles(BuildParametersContext, BuildMapContext)
加密资源包文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskEncryption.cs#L19)
```csharp title="Declaration"
public void EncryptingBundleFiles(BuildParametersContext buildParametersContext, BuildMapContext buildMapContext)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParametersContext](../YooAsset.Editor/BuildParametersContext.md) | *buildParametersContext* | 构建参数上下文 |
| [YooAsset.Editor.BuildMapContext](../YooAsset.Editor/BuildMapContext.md) | *buildMapContext* | 构建映射上下文 |

