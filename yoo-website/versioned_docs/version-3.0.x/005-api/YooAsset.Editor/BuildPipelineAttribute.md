---
title: Class BuildPipelineAttribute
sidebar_label: BuildPipelineAttribute
description: "构建管线查看器的标识特性，用于关联查看器与管线名称"
---
# Class BuildPipelineAttribute
构建管线查看器的标识特性，用于关联查看器与管线名称

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/VisualViewers/BuildPipelineAttribute.cs#L8)
```csharp title="Declaration"
[AttributeUsage(AttributeTargets.Class, Inherited = false, AllowMultiple = false)]
public sealed class BuildPipelineAttribute : Attribute, _Attribute
```
## Properties
### PipelineName
关联的构建管线名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/VisualViewers/BuildPipelineAttribute.cs#L14)
```csharp title="Declaration"
public string PipelineName { get; }
```

## Implements

* `System.Runtime.InteropServices._Attribute`
