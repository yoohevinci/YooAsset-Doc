---
title: Class TaskCreateManifest
sidebar_label: TaskCreateManifest
description: "创建补丁清单的任务抽象基类，负责序列化清单并写入输出目录。"
---
# Class TaskCreateManifest
创建补丁清单的任务抽象基类，负责序列化清单并写入输出目录。

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCreateManifest.cs#L21)
```csharp title="Declaration"
public abstract class TaskCreateManifest
```
## Methods
### CreateManifestFile(bool, bool, bool, BuildContext)
创建补丁清单文件到输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCreateManifest.cs#L33)
```csharp title="Declaration"
protected void CreateManifestFile(bool processBundleDepends, bool processBundleTags, bool replaceAssetPathWithAddress, BuildContext context)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *processBundleDepends* | 是否处理资源包依赖关系 |
| `System.Boolean` | *processBundleTags* | 是否处理资源包标签 |
| `System.Boolean` | *replaceAssetPathWithAddress* | 是否用可寻址地址替换资源路径 |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |

### GetBundleDepends(BuildContext, string)
获取资源包的依赖集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildPipeline/BaseTasks/TaskCreateManifest.cs#L156)
```csharp title="Declaration"
protected abstract string[] GetBundleDepends(BuildContext context, string bundleName)
```

##### Returns

`System.String[]`: 依赖的资源包名称数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildContext](../YooAsset.Editor/BuildContext.md) | *context* | 构建上下文 |
| `System.String` | *bundleName* | 资源包名称 |

