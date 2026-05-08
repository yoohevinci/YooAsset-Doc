---
title: Class EncryptionNone
sidebar_label: EncryptionNone
description: "空加密实现，不对资源包进行任何加密处理"
---
# Class EncryptionNone
空加密实现，不对资源包进行任何加密处理

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/DefaultBuildServices.cs#L7)
```csharp title="Declaration"
public class EncryptionNone : IBundleEncryptor
```
## Methods
### Encrypt(BundleEncryptArgs)
对指定的资源包文件执行加密
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleBuilder/DefaultBuildServices.cs#L10)
```csharp title="Declaration"
public BundleEncryptResult Encrypt(BundleEncryptArgs fileInfo)
```

##### Returns

[YooAsset.BundleEncryptResult](../YooAsset/BundleEncryptResult.md): 包含加密状态和加密后数据的结果
##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.BundleEncryptArgs](../YooAsset/BundleEncryptArgs.md) | *fileInfo* |


## Implements

* [YooAsset.IBundleEncryptor](../YooAsset/IBundleEncryptor.md)
