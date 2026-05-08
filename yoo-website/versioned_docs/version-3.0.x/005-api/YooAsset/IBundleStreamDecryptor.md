---
title: Interface IBundleStreamDecryptor
sidebar_label: IBundleStreamDecryptor
description: "基于流的资源包解密器。
通过提供解密流实现流式加载，适用于大文件场景。"
---
# Interface IBundleStreamDecryptor
基于流的资源包解密器。
通过提供解密流实现流式加载，适用于大文件场景。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IBundleStreamDecryptor : IBundleDecryptor
```
## Methods
### GetBufferSize(BundleDecryptArgs)
获取流式读取时使用的缓冲区大小（字节）

```csharp title="Declaration"
int GetBufferSize(BundleDecryptArgs args)
```

##### Returns

`System.Int32`: 建议的缓冲区字节数
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDecryptArgs](../YooAsset/BundleDecryptArgs.md) | *args* | 解密操作的输入参数 |

### CreateDecryptionStream(BundleDecryptArgs)
创建用于解密读取的流实例

```csharp title="Declaration"
Stream CreateDecryptionStream(BundleDecryptArgs args)
```

##### Returns

`System.IO.Stream`: 可供 AssetBundle 加载使用的解密流
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.BundleDecryptArgs](../YooAsset/BundleDecryptArgs.md) | *args* | 解密操作的输入参数 |

