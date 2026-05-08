---
title: Interface IManifestDecryptor
sidebar_label: IManifestDecryptor
description: "资源清单解密器"
---
# Interface IManifestDecryptor
资源清单解密器

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IManifestDecryptor
```
## Methods
### Decrypt(byte[])
对加密的资源清单数据执行解密

```csharp title="Declaration"
byte[] Decrypt(byte[] fileData)
```

##### Returns

`System.Byte[]`: 解密后的字节数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Byte[]` | *fileData* | 已加密的清单数据 |

