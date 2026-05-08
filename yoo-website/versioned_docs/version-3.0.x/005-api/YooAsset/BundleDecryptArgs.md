---
title: Struct BundleDecryptArgs
sidebar_label: BundleDecryptArgs
description: "资源包解密操作的输入参数"
---
# Struct BundleDecryptArgs
资源包解密操作的输入参数

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleDecryptor.cs#L9)
```csharp title="Declaration"
public readonly struct BundleDecryptArgs
```
## Properties
### FileData
资源包的二进制数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleDecryptor.cs#L22)
```csharp title="Declaration"
public byte[] FileData { get; }
```
### FilePath
资源包的文件路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleDecryptor.cs#L27)
```csharp title="Declaration"
public string FilePath { get; }
```
