---
title: Class TaskCreatePackage
sidebar_label: TaskCreatePackage
description: "创建补丁包的任务辅助基类"
---
# Class TaskCreatePackage
创建补丁包的任务辅助基类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TaskCreatePackage
```
## Methods
### CopyPipelineFile(string, string, string)
从指定目录拷贝到目标目录

```csharp title="Declaration"
protected void CopyPipelineFile(string sourceRootDirectory, string destRootDirectory, string fileName)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *sourceRootDirectory* |
| `System.String` | *destRootDirectory* |
| `System.String` | *fileName* |

### CopyPackageBundles(BuildMapContext)
拷贝所有补丁文件

```csharp title="Declaration"
protected void CopyPackageBundles(BuildMapContext buildMapContext)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildMapContext](../YooAsset.Editor/BuildMapContext.md) | *buildMapContext* |

