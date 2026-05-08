---
title: Class LegacyBuildParameters
sidebar_label: LegacyBuildParameters
description: "旧版构建管线的构建参数"
---
# Class LegacyBuildParameters
旧版构建管线的构建参数

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class LegacyBuildParameters : BuildParameters
```
## Fields
### CompressOption
压缩选项

```csharp title="Declaration"
public ECompressOption CompressOption
```
### StripUnityVersion
从文件头里剥离Unity版本信息

```csharp title="Declaration"
public bool StripUnityVersion
```
### DisableWriteTypeTree
禁止写入类型树结构（可以降低包体和内存并提高加载效率）

```csharp title="Declaration"
public bool DisableWriteTypeTree
```
### IgnoreTypeTreeChanges
忽略类型树变化

```csharp title="Declaration"
public bool IgnoreTypeTreeChanges
```
### ReplaceAssetPathWithAddress
是否使用可寻址地址代替资源路径

```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress
```
## Methods
### GetBundleBuildOptions()
获取旧版构建管线的构建选项

```csharp title="Declaration"
public BuildAssetBundleOptions GetBundleBuildOptions()
```

##### Returns

`UnityEditor.BuildAssetBundleOptions`
