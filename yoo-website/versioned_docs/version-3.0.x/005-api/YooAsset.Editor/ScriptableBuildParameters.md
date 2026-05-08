---
title: Class ScriptableBuildParameters
sidebar_label: ScriptableBuildParameters
description: "可编程构建管线的构建参数"
---
# Class ScriptableBuildParameters
可编程构建管线的构建参数

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ScriptableBuildParameters : BuildParameters
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
忽略类型树变化（无效参数）

```csharp title="Declaration"
[Obsolete("SBP does not support IgnoreTypeTreeChanges.")]
public bool IgnoreTypeTreeChanges
```
### ReplaceAssetPathWithAddress
是否使用可寻址地址代替资源路径

```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress
```
### TrackSpriteAtlasDependencies
自动建立资源对象对图集的依赖关系

```csharp title="Declaration"
public bool TrackSpriteAtlasDependencies
```
### WriteLinkXML
生成代码防裁剪配置

```csharp title="Declaration"
public bool WriteLinkXML
```
### CacheServerHost
缓存服务器地址

```csharp title="Declaration"
public string CacheServerHost
```
### CacheServerPort
缓存服务器端口

```csharp title="Declaration"
public int CacheServerPort
```
### BuiltinShadersBundleName
内置着色器资源包名称

```csharp title="Declaration"
public string BuiltinShadersBundleName
```
### MonoScriptsBundleName
Mono脚本资源包名称

```csharp title="Declaration"
public string MonoScriptsBundleName
```
## Methods
### GetBundleBuildParameters()
获取可编程构建管线的构建参数

```csharp title="Declaration"
public BundleBuildParameters GetBundleBuildParameters()
```

##### Returns

`UnityEditor.Build.Pipeline.BundleBuildParameters`
