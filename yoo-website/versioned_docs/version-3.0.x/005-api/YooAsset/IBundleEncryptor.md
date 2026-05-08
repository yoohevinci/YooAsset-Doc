---
title: Interface IBundleEncryptor
sidebar_label: IBundleEncryptor
description: "定义资源包的加密行为"
---
# Interface IBundleEncryptor
定义资源包的加密行为

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IBundleEncryptor
```
## Methods
### Encrypt(BundleEncryptArgs)
对指定的资源包文件执行加密

```csharp title="Declaration"
BundleEncryptResult Encrypt(BundleEncryptArgs args)
```

##### Returns

[YooAsset.BundleEncryptResult](/docs/3.0.x/api/YooAsset/BundleEncryptResult): 包含加密状态和加密后数据的结果
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleEncryptArgs](/docs/3.0.x/api/YooAsset/BundleEncryptArgs) | *args* | 加密操作的输入参数 |

