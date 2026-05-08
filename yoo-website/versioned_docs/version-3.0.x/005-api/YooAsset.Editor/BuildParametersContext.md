---
title: Class BuildParametersContext
sidebar_label: BuildParametersContext
description: "构建参数上下文"
---
# Class BuildParametersContext
构建参数上下文

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L12)
```csharp title="Declaration"
public class BuildParametersContext
```
## Properties
### Parameters
构建参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L18)
```csharp title="Declaration"
public BuildParameters Parameters { get; }
```
## Methods
### CheckBuildParameters()
检测构建参数是否合法
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L33)
```csharp title="Declaration"
public void CheckBuildParameters()
```
### GetPipelineOutputDirectory()
获取构建管线的输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L42)
```csharp title="Declaration"
public string GetPipelineOutputDirectory()
```

##### Returns

`System.String`: 构建管线的输出目录路径### GetPackageOutputDirectory()
获取本次构建的补丁输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L51)
```csharp title="Declaration"
public string GetPackageOutputDirectory()
```

##### Returns

`System.String`: 本次构建的补丁输出目录路径### GetPackageRootDirectory()
获取本次构建的补丁根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L60)
```csharp title="Declaration"
public string GetPackageRootDirectory()
```

##### Returns

`System.String`: 本次构建的补丁根目录路径### GetBundledRootDirectory()
获取首包资源的根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParametersContext.cs#L69)
```csharp title="Declaration"
public string GetBundledRootDirectory()
```

##### Returns

`System.String`: 首包资源的根目录路径