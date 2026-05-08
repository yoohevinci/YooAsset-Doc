---
title: Class TaskGetBuildMap
sidebar_label: TaskGetBuildMap
description: "获取资源构建映射的任务，负责从收集器生成构建映射上下文。"
---
# Class TaskGetBuildMap
获取资源构建映射的任务，负责从收集器生成构建映射上下文。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L13)
```csharp title="Declaration"
public class TaskGetBuildMap
```
## Methods
### CreateBuildMap(bool, BuildParameters)
生成资源构建上下文
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L21)
```csharp title="Declaration"
public BuildMapContext CreateBuildMap(bool simulateBuild, BuildParameters buildParameters)
```

##### Returns

[YooAsset.Editor.BuildMapContext](../YooAsset.Editor/BuildMapContext.md): 构建映射上下文
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *simulateBuild* | 是否模拟构建 |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |

### PreProcessPackShareBundle(BuildParameters, CollectCommand, Dictionary&lt;string, BuildAssetInfo&gt;)
共享资源打包前置处理
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L210)
```csharp title="Declaration"
protected virtual void PreProcessPackShareBundle(BuildParameters buildParameters, CollectCommand command, Dictionary<string, BuildAssetInfo> allBuildAssetInfos)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |
| `System.Collections.Generic.Dictionary<System.String,YooAsset.Editor.BuildAssetInfo>` | *allBuildAssetInfos* | 全部构建资源信息字典 |

### ProcessingPackShareBundle(BuildParameters, CollectCommand, BuildAssetInfo)
共享资源打包机制
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L220)
```csharp title="Declaration"
protected virtual void ProcessingPackShareBundle(BuildParameters buildParameters, CollectCommand command, BuildAssetInfo buildAssetInfo)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |
| [YooAsset.Editor.BuildAssetInfo](../YooAsset.Editor/BuildAssetInfo.md) | *buildAssetInfo* | 当前处理的构建资源信息 |

### PostProcessPackShareBundle(BuildParameters, CollectCommand, Dictionary&lt;string, BuildAssetInfo&gt;)
共享资源打包后置处理
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L250)
```csharp title="Declaration"
protected virtual void PostProcessPackShareBundle(BuildParameters buildParameters, CollectCommand command, Dictionary<string, BuildAssetInfo> allBuildAssetInfos)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildParameters](../YooAsset.Editor/BuildParameters.md) | *buildParameters* | 构建参数 |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |
| `System.Collections.Generic.Dictionary<System.String,YooAsset.Editor.BuildAssetInfo>` | *allBuildAssetInfos* | 全部构建资源信息字典 |

### CheckRawBundleMapContent(BuildMapContext)
检测原生文件资源包的构建规则
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskGetBuildMap.cs#L262)
```csharp title="Declaration"
protected void CheckRawBundleMapContent(BuildMapContext buildMapContext)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildMapContext](../YooAsset.Editor/BuildMapContext.md) | *buildMapContext* | 构建映射上下文 |

