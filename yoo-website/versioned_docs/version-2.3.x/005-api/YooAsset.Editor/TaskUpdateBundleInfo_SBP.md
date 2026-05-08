---
title: Class TaskUpdateBundleInfo_SBP
sidebar_label: TaskUpdateBundleInfo_SBP
---
# Class TaskUpdateBundleInfo_SBP


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TaskUpdateBundleInfo_SBP : TaskUpdateBundleInfo, IBuildTask
```
## Methods
### GetUnityHash(BuildBundleInfo, BuildContext)


```csharp title="Declaration"
protected override string GetUnityHash(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |

### GetUnityCRC(BuildBundleInfo, BuildContext)


```csharp title="Declaration"
protected override uint GetUnityCRC(BuildBundleInfo bundleInfo, BuildContext context)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |

### GetBundleFileHash(BuildBundleInfo, BuildParametersContext)


```csharp title="Declaration"
protected override string GetBundleFileHash(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildParametersContext](/docs/2.3.x/api/YooAsset.Editor/BuildParametersContext) | *buildParametersContext* |

### GetBundleFileCRC(BuildBundleInfo, BuildParametersContext)


```csharp title="Declaration"
protected override uint GetBundleFileCRC(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildParametersContext](/docs/2.3.x/api/YooAsset.Editor/BuildParametersContext) | *buildParametersContext* |

### GetBundleFileSize(BuildBundleInfo, BuildParametersContext)


```csharp title="Declaration"
protected override long GetBundleFileSize(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
```

##### Returns

`System.Int64`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildParametersContext](/docs/2.3.x/api/YooAsset.Editor/BuildParametersContext) | *buildParametersContext* |


## Implements

* [YooAsset.Editor.IBuildTask](/docs/2.3.x/api/YooAsset.Editor/IBuildTask)
