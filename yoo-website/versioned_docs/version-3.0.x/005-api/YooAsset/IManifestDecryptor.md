---
title: Interface IManifestDecryptor
sidebar_label: IManifestDecryptor
description: "资源清单解密器"
---
# Interface IManifestDecryptor
资源清单解密器

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IManifestDecryptor.cs#L7)
```csharp title="Declaration"
public interface IManifestDecryptor
```
## Methods
### Decrypt(byte[])
对加密的资源清单数据执行解密
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IManifestDecryptor.cs#L14)
```csharp title="Declaration"
byte[] Decrypt(byte[] fileData)
```

##### Returns

`System.Byte[]`: 解密后的字节数组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Byte[]` | *fileData* | 已加密的清单数据 |

