---
title: Class TaskCopyBundledFiles
sidebar_label: TaskCopyBundledFiles
description: "拷贝首包资源文件的任务，将清单与指定资源包复制到首包目录。"
---
# Class TaskCopyBundledFiles
拷贝首包资源文件的任务，将清单与指定资源包复制到首包目录。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCopyBundledFiles.cs#L13)
```csharp title="Declaration"
public class TaskCopyBundledFiles
```
## Methods
### CopyPipelineFile(string, string, string)
从指定目录拷贝到目标目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCopyBundledFiles.cs#L18)
```csharp title="Declaration"
protected void CopyPipelineFile(string sourceRootDirectory, string destRootDirectory, string fileName)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *sourceRootDirectory* |
| `System.String` | *destRootDirectory* |
| `System.String` | *fileName* |

