---
title: Interface IBundleMemoryDecryptor
sidebar_label: IBundleMemoryDecryptor
description: "基于内存的资源包解密器。
将整个加密数据解密为字节数组后加载。"
---
# Interface IBundleMemoryDecryptor
基于内存的资源包解密器。
将整个加密数据解密为字节数组后加载。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IBundleMemoryDecryptor : IBundleDecryptor
```
## Methods
### GetDecryptedData(BundleDecryptArgs)
将资源包数据解密并返回解密后的字节数组

```csharp title="Declaration"
byte[] GetDecryptedData(BundleDecryptArgs args)
```

##### Returns

`System.Byte[]`: 解密后的资源包数据
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDecryptArgs](/docs/api/YooAsset/BundleDecryptArgs) | *args* | 解密操作的输入参数 |

