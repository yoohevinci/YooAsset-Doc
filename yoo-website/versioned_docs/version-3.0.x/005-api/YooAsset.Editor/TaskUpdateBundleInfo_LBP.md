---
title: Class TaskUpdateBundleInfo_LBP
sidebar_label: TaskUpdateBundleInfo_LBP
description: "旧版构建管线的资源包信息更新任务"
---
# Class TaskUpdateBundleInfo_LBP
旧版构建管线的资源包信息更新任务

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TaskUpdateBundleInfo_LBP : TaskUpdateBundleInfo, IBuildTask
```
## Methods
### GetUnityHash(BuildBundleInfo, BuildContext)
获取 Unity 记录的资源包哈希值

```csharp title="Declaration"
protected override string GetUnityHash(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.String`: Unity 哈希字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |

### GetUnityCRC(BuildBundleInfo, BuildContext)
获取 Unity 记录的资源包 CRC

```csharp title="Declaration"
protected override uint GetUnityCRC(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.UInt32`: Unity CRC 值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |

### GetBundleFileHash(BuildBundleInfo, BuildContext)
获取资源包文件的哈希值（用于远端文件名等）

```csharp title="Declaration"
protected override string GetBundleFileHash(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.String`: 文件哈希字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |

### GetBundleFileCRC(BuildBundleInfo, BuildContext)
获取资源包文件的 CRC

```csharp title="Declaration"
protected override uint GetBundleFileCRC(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.UInt32`: 文件 CRC 值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |

### GetBundleFileSize(BuildBundleInfo, BuildContext)
获取资源包文件大小（字节）

```csharp title="Declaration"
protected override long GetBundleFileSize(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.Int64`: 文件大小
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/3.0.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* | 资源包构建信息 |
| [YooAsset.Editor.BuildContext](/docs/3.0.x/api/YooAsset.Editor/BuildContext) | *context* | 构建上下文 |


## Implements

* [YooAsset.Editor.IBuildTask](/docs/3.0.x/api/YooAsset.Editor/IBuildTask)
