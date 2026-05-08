---
title: Class YooPackageInvalidException
sidebar_label: YooPackageInvalidException
description: "The exception that is thrown when a resource package is in an invalid state."
---
# Class YooPackageInvalidException
The exception that is thrown when a resource package is in an invalid state.

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooException.cs#L47)
```csharp title="Declaration"
[Serializable]
public class YooPackageInvalidException : YooException, ISerializable
```
## Properties
### PackageName
Gets the name of the package that caused the exception.
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooException.cs#L53)
```csharp title="Declaration"
public string PackageName { get; }
```

## Implements

* `System.Runtime.Serialization.ISerializable`
