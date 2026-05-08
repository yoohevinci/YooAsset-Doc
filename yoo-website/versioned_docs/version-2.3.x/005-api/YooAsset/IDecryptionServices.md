---
title: Interface IDecryptionServices
sidebar_label: IDecryptionServices
---
# Interface IDecryptionServices


###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public interface IDecryptionServices
```
## Methods
### LoadAssetBundle(DecryptFileInfo)
同步方式获取解密的资源包

```csharp title="Declaration"
DecryptResult LoadAssetBundle(DecryptFileInfo fileInfo)
```

##### Returns

[YooAsset.DecryptResult](/docs/2.3.x/api/YooAsset/DecryptResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.DecryptFileInfo](/docs/2.3.x/api/YooAsset/DecryptFileInfo) | *fileInfo* |

### LoadAssetBundleAsync(DecryptFileInfo)
异步方式获取解密的资源包

```csharp title="Declaration"
DecryptResult LoadAssetBundleAsync(DecryptFileInfo fileInfo)
```

##### Returns

[YooAsset.DecryptResult](/docs/2.3.x/api/YooAsset/DecryptResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.DecryptFileInfo](/docs/2.3.x/api/YooAsset/DecryptFileInfo) | *fileInfo* |

### LoadAssetBundleFallback(DecryptFileInfo)
后备方式获取解密的资源包
注意：当正常解密方法失败后，会触发后备加载！
说明：建议通过LoadFromMemory()方法加载资源包作为保底机制。
issues : https://github.com/tuyoogame/YooAsset/issues/562

```csharp title="Declaration"
DecryptResult LoadAssetBundleFallback(DecryptFileInfo fileInfo)
```

##### Returns

[YooAsset.DecryptResult](/docs/2.3.x/api/YooAsset/DecryptResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.DecryptFileInfo](/docs/2.3.x/api/YooAsset/DecryptFileInfo) | *fileInfo* |

### ReadFileData(DecryptFileInfo)
获取解密的字节数据

```csharp title="Declaration"
byte[] ReadFileData(DecryptFileInfo fileInfo)
```

##### Returns

`System.Byte[]`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.DecryptFileInfo](/docs/2.3.x/api/YooAsset/DecryptFileInfo) | *fileInfo* |

### ReadFileText(DecryptFileInfo)
获取解密的文本数据

```csharp title="Declaration"
string ReadFileText(DecryptFileInfo fileInfo)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.DecryptFileInfo](/docs/2.3.x/api/YooAsset/DecryptFileInfo) | *fileInfo* |

