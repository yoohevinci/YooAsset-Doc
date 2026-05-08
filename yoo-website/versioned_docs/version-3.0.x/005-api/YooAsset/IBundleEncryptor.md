---
title: Interface IBundleEncryptor
sidebar_label: IBundleEncryptor
description: "定义资源包的加密行为"
---
# Interface IBundleEncryptor
定义资源包的加密行为

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleEncryptor.cs#L61)
```csharp title="Declaration"
public interface IBundleEncryptor
```
## Methods
### Encrypt(BundleEncryptArgs)
对指定的资源包文件执行加密
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBundleEncryptor.cs#L68)
```csharp title="Declaration"
BundleEncryptResult Encrypt(BundleEncryptArgs args)
```

##### Returns

[YooAsset.BundleEncryptResult](../YooAsset/BundleEncryptResult.md): 包含加密状态和加密后数据的结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleEncryptArgs](../YooAsset/BundleEncryptArgs.md) | *args* | 加密操作的输入参数 |

