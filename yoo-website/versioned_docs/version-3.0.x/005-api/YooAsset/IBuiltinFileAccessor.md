---
title: Interface IBuiltinFileAccessor
sidebar_label: IBuiltinFileAccessor
---
# Interface IBuiltinFileAccessor


###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBuiltinFileAccessor.cs#L10)
```csharp title="Declaration"
public interface IBuiltinFileAccessor
```
## Methods
### FileExists(string)
检查内置文件是否存在
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBuiltinFileAccessor.cs#L16)
```csharp title="Declaration"
bool FileExists(string filePath)
```

##### Returns

`System.Boolean`

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 内置文件路径 |

### ReadAllBytes(string)
读取内置文件的所有字节
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Interfaces/IBuiltinFileAccessor.cs#L22)
```csharp title="Declaration"
byte[] ReadAllBytes(string filePath)
```

##### Returns

`System.Byte[]`

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *filePath* | 内置文件路径 |

