---
title: Interface IBundleOffsetDecryptor
sidebar_label: IBundleOffsetDecryptor
description: "基于偏移量的资源包解密器。
用于跳过文件头部加密区域后直接加载 AssetBundle。"
---
# Interface IBundleOffsetDecryptor
基于偏移量的资源包解密器。
用于跳过文件头部加密区域后直接加载 AssetBundle。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IBundleOffsetDecryptor : IBundleDecryptor
```
## Methods
### GetFileOffset(BundleDecryptArgs)
获取解密数据的起始偏移量（字节）

```csharp title="Declaration"
long GetFileOffset(BundleDecryptArgs args)
```

##### Returns

`System.Int64`: AssetBundle 有效数据在文件中的起始偏移量
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDecryptArgs](/docs/api/YooAsset/BundleDecryptArgs) | *args* | 解密操作的输入参数 |

