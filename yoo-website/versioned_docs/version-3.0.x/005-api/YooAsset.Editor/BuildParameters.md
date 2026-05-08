---
title: Class BuildParameters
sidebar_label: BuildParameters
description: "构建参数"
---
# Class BuildParameters
构建参数

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L12)
```csharp title="Declaration"
public abstract class BuildParameters
```
## Properties
### BuildOutputRoot
构建输出的根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L18)
```csharp title="Declaration"
public string BuildOutputRoot { get; set; }
```
### BundledFileRoot
首包资源的根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L23)
```csharp title="Declaration"
public string BundledFileRoot { get; set; }
```
### BuildPipeline
构建管线名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L28)
```csharp title="Declaration"
public string BuildPipeline { get; set; }
```
### BuildBundleType
构建资源包类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L33)
```csharp title="Declaration"
public int BuildBundleType { get; set; }
```
### BuildTarget
构建的平台
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L38)
```csharp title="Declaration"
public BuildTarget BuildTarget { get; set; }
```
### PackageName
构建的包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L43)
```csharp title="Declaration"
public string PackageName { get; set; }
```
### PackageVersion
构建的包裹版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L48)
```csharp title="Declaration"
public string PackageVersion { get; set; }
```
### PackageNote
构建的包裹备注
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L53)
```csharp title="Declaration"
public string PackageNote { get; set; }
```
### ClearBuildCacheFiles
清空构建缓存文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L58)
```csharp title="Declaration"
public bool ClearBuildCacheFiles { get; set; }
```
### UseAssetDependencyDB
是否使用资源依赖缓存数据库
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L64)
```csharp title="Declaration"
public bool UseAssetDependencyDB { get; set; }
```
### EnableSharePackRule
启用共享资源打包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L69)
```csharp title="Declaration"
public bool EnableSharePackRule { get; set; }
```
### SingleReferencedPackAlone
是否对单独引用的共享资源进行独立打包
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L75)
```csharp title="Declaration"
public bool SingleReferencedPackAlone { get; set; }
```
### VerifyBuildingResult
验证构建结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L80)
```csharp title="Declaration"
public bool VerifyBuildingResult { get; set; }
```
### FileNameStyle
资源包名称样式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L85)
```csharp title="Declaration"
public EFileNameStyle FileNameStyle { get; set; }
```
### BundledCopyOption
首包资源的拷贝选项
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L90)
```csharp title="Declaration"
public EBundledCopyOption BundledCopyOption { get; set; }
```
### BundledCopyParams
首包资源的拷贝参数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L95)
```csharp title="Declaration"
public string BundledCopyParams { get; set; }
```
### BundleEncryptor
资源包加密器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L100)
```csharp title="Declaration"
public IBundleEncryptor BundleEncryptor { get; set; }
```
### ManifestEncryptor
资源清单加密器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L105)
```csharp title="Declaration"
public IManifestEncryptor ManifestEncryptor { get; set; }
```
### ManifestDecryptor
资源清单解密器
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L110)
```csharp title="Declaration"
public IManifestDecryptor ManifestDecryptor { get; set; }
```
## Methods
### CheckBuildParameters()
检测构建参数是否合法
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L116)
```csharp title="Declaration"
public void CheckBuildParameters()
```
### GetPipelineOutputDirectory()
获取构建管线的输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L175)
```csharp title="Declaration"
public string GetPipelineOutputDirectory()
```

##### Returns

`System.String`: 构建管线的输出目录路径### GetPackageOutputDirectory()
获取本次构建的补丁输出目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L184)
```csharp title="Declaration"
public string GetPackageOutputDirectory()
```

##### Returns

`System.String`: 本次构建的补丁输出目录路径### GetPackageRootDirectory()
获取本次构建的补丁根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L193)
```csharp title="Declaration"
public string GetPackageRootDirectory()
```

##### Returns

`System.String`: 本次构建的补丁根目录路径### GetBundledRootDirectory()
获取首包资源的根目录
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L202)
```csharp title="Declaration"
public string GetBundledRootDirectory()
```

##### Returns

`System.String`: 首包资源的根目录路径### CheckBuildParametersCore()
执行子类特定的构建参数验证
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L211)
```csharp title="Declaration"
protected virtual void CheckBuildParametersCore()
```
### GetPipelineOutputDirectoryCore()
获取构建管线输出目录的核心实现
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L217)
```csharp title="Declaration"
protected virtual string GetPipelineOutputDirectoryCore()
```

##### Returns

`System.String`: 构建管线的输出目录路径### GetPackageOutputDirectoryCore()
获取补丁输出目录的核心实现
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L226)
```csharp title="Declaration"
protected virtual string GetPackageOutputDirectoryCore()
```

##### Returns

`System.String`: 本次构建的补丁输出目录路径### GetPackageRootDirectoryCore()
获取补丁根目录的核心实现
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L235)
```csharp title="Declaration"
protected virtual string GetPackageRootDirectoryCore()
```

##### Returns

`System.String`: 本次构建的补丁根目录路径### GetBundledRootDirectoryCore()
获取首包资源根目录的核心实现
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/BuildParameters.cs#L244)
```csharp title="Declaration"
protected virtual string GetBundledRootDirectoryCore()
```

##### Returns

`System.String`: 首包资源的根目录路径