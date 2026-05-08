---
title: Class EncryptionNone
sidebar_label: EncryptionNone
description: "空加密实现，不对资源包进行任何加密处理"
---
# Class EncryptionNone
空加密实现，不对资源包进行任何加密处理

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class EncryptionNone : IBundleEncryptor
```
## Methods
### Encrypt(BundleEncryptArgs)
对指定的资源包文件执行加密

```csharp title="Declaration"
public BundleEncryptResult Encrypt(BundleEncryptArgs fileInfo)
```

##### Returns

[YooAsset.BundleEncryptResult](/docs/3.0.x/api/YooAsset/BundleEncryptResult): 包含加密状态和加密后数据的结果
##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.BundleEncryptArgs](/docs/3.0.x/api/YooAsset/BundleEncryptArgs) | *fileInfo* |


## Implements

* [YooAsset.IBundleEncryptor](/docs/3.0.x/api/YooAsset/IBundleEncryptor)
