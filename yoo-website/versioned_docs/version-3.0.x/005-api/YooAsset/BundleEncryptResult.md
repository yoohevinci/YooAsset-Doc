---
title: Struct BundleEncryptResult
sidebar_label: BundleEncryptResult
description: "资源包加密操作的返回结果"
---
# Struct BundleEncryptResult
资源包加密操作的返回结果

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleEncryptor.cs#L34)
```csharp title="Declaration"
public readonly struct BundleEncryptResult
```
## Properties
### IsEncrypted
文件是否已加密
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleEncryptor.cs#L39)
```csharp title="Declaration"
public bool IsEncrypted { get; }
```
### EncryptedFileData
加密后的文件数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleEncryptor.cs#L44)
```csharp title="Declaration"
public byte[] EncryptedFileData { get; }
```
