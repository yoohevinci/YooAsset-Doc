---
title: Class TaskCreateManifest_ESBP
sidebar_label: TaskCreateManifest_ESBP
---
# Class TaskCreateManifest_ESBP


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TaskCreateManifest_ESBP : TaskCreateManifest, IBuildTask
```
## Methods
### GetBundleDepends(BuildContext, string)
获取资源包的依赖集合

```csharp title="Declaration"
protected override string[] GetBundleDepends(BuildContext context, string bundleName)
```

##### Returns

`System.String[]`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |
| `System.String` | *bundleName* |


## Implements

* [YooAsset.Editor.IBuildTask](/docs/2.3.x/api/YooAsset.Editor/IBuildTask)
