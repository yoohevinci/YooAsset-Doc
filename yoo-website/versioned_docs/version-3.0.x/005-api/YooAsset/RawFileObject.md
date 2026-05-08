---
title: Class RawFileObject
sidebar_label: RawFileObject
description: "原生文件对象"
---
# Class RawFileObject
原生文件对象

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class RawFileObject : ScriptableObject
```
## Methods
### GetBytes()
获取原生文件的字节数据

```csharp title="Declaration"
public byte[] GetBytes()
```

##### Returns

`System.Byte[]`: 原生文件字节数据的副本### GetText()
获取以 UTF-8 编码解析的文本内容

```csharp title="Declaration"
public string GetText()
```

##### Returns

`System.String`: 解析后的文本字符串