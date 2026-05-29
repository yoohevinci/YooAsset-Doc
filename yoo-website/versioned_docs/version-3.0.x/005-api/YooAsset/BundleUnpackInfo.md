---
title: Struct BundleUnpackInfo
sidebar_label: BundleUnpackInfo
description: "资源包解包判定信息"
---
# Struct BundleUnpackInfo
资源包解包判定信息

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L7)
```csharp title="Declaration"
public readonly struct BundleUnpackInfo
```
## Properties
### BundleName
资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L14)
```csharp title="Declaration"
public string BundleName { get; }
```
### FileName
资源包文件名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L19)
```csharp title="Declaration"
public string FileName { get; }
```
### BundleType
资源包类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L24)
```csharp title="Declaration"
public int BundleType { get; }
```
### IsEncrypted
是否为加密资源包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L29)
```csharp title="Declaration"
public bool IsEncrypted { get; }
```
### TagCount
分类标签数量
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L34)
```csharp title="Declaration"
public int TagCount { get; }
```
## Methods
### GetTag(int)
获取指定索引的分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L50)
```csharp title="Declaration"
public string GetTag(int index)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Int32` | *index* |

### HasTag(string)
是否包含指定的单个标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L58)
```csharp title="Declaration"
public bool HasTag(string tag)
```

##### Returns

`System.Boolean`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *tag* |

### HasAnyTag(string[])
是否包含指定标签数组中的任意一个
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleUnpackPolicy.cs#L66)
```csharp title="Declaration"
public bool HasAnyTag(string[] tags)
```

##### Returns

`System.Boolean`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String[]` | *tags* |

