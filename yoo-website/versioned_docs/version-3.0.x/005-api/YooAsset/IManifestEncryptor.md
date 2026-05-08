---
title: Interface IManifestEncryptor
sidebar_label: IManifestEncryptor
description: "资源清单加密器"
---
# Interface IManifestEncryptor
资源清单加密器

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IManifestEncryptor
```
## Methods
### Encrypt(byte[])
对资源清单的原始数据执行加密

```csharp title="Declaration"
byte[] Encrypt(byte[] fileData)
```

##### Returns

`System.Byte[]`: 加密后的字节数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Byte[]` | *fileData* | 待加密的清单数据 |

