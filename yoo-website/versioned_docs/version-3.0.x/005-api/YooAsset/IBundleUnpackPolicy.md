---
title: Interface IBundleUnpackPolicy
sidebar_label: IBundleUnpackPolicy
description: "内置资源包解包策略接口"
---
# Interface IBundleUnpackPolicy
内置资源包解包策略接口

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L75)
```csharp title="Declaration"
public interface IBundleUnpackPolicy
```
## Methods
### IsUnpackBundle(BundleUnpackInfo)
判定指定资源包是否为需要解包的类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L80)
```csharp title="Declaration"
bool IsUnpackBundle(BundleUnpackInfo unpackInfo)
```

##### Returns

`System.Boolean`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.BundleUnpackInfo](../YooAsset/BundleUnpackInfo.md) | *unpackInfo* |

