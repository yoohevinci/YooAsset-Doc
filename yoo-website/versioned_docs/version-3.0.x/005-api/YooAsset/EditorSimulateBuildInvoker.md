---
title: Class EditorSimulateBuildInvoker
sidebar_label: EditorSimulateBuildInvoker
description: "编辑器模拟构建的调用入口"
---
# Class EditorSimulateBuildInvoker
编辑器模拟构建的调用入口

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/PackageBuilder/EditorSimulateBuildInvoker.cs#L8)
```csharp title="Declaration"
public static class EditorSimulateBuildInvoker
```
## Methods
### Build(string, int)
执行编辑器模拟构建
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/PackageBuilder/EditorSimulateBuildInvoker.cs#L19)
```csharp title="Declaration"
public static PackageBuildResult Build(string packageName, int buildBundleType)
```

##### Returns

[YooAsset.PackageBuildResult](../YooAsset/PackageBuildResult.md): 构建结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.Int32` | *buildBundleType* | 构建资源包类型 |

