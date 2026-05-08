---
title: Class TaskCreateManifest
sidebar_label: TaskCreateManifest
---
# Class TaskCreateManifest


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public abstract class TaskCreateManifest
```
## Methods
### CreateManifestFile(bool, bool, BuildContext)
创建补丁清单文件到输出目录

```csharp title="Declaration"
protected void CreateManifestFile(bool processBundleDepends, bool processBundleTags, BuildContext context)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Boolean` | *processBundleDepends* |
| `System.Boolean` | *processBundleTags* |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |

### GetBundleDepends(BuildContext, string)
获取资源包的依赖集合

```csharp title="Declaration"
protected abstract string[] GetBundleDepends(BuildContext context, string bundleName)
```

##### Returns

`System.String[]`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.BuildContext](/docs/2.3.x/api/YooAsset.Editor/BuildContext) | *context* |
| `System.String` | *bundleName* |

