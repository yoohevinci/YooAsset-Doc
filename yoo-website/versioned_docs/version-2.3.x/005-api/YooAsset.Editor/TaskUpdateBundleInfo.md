---
title: Class TaskUpdateBundleInfo
sidebar_label: TaskUpdateBundleInfo
---
# Class TaskUpdateBundleInfo


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public abstract class TaskUpdateBundleInfo
```
## Methods
### UpdateBundleInfo(BuildContext)


```csharp title="Declaration"
public void UpdateBundleInfo(BuildContext context)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |

### GetUnityHash(BuildBundleInfo, BuildContext)


```csharp title="Declaration"
protected abstract string GetUnityHash(BuildBundleInfo bundleInfo, BuildContext context)
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
protected abstract uint GetUnityCRC(BuildBundleInfo bundleInfo, BuildContext context)
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
protected abstract string GetBundleFileHash(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
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
protected abstract uint GetBundleFileCRC(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
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
protected abstract long GetBundleFileSize(BuildBundleInfo bundleInfo, BuildParametersContext buildParametersContext)
```

##### Returns

`System.Int64`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildBundleInfo](/docs/2.3.x/api/YooAsset.Editor/BuildBundleInfo) | *bundleInfo* |
| [YooAsset.Editor.BuildParametersContext](/docs/2.3.x/api/YooAsset.Editor/BuildParametersContext) | *buildParametersContext* |

