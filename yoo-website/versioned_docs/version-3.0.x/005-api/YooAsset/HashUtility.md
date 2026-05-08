---
title: Class HashUtility
sidebar_label: HashUtility
description: "哈希工具类"
---
# Class HashUtility
哈希工具类

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public static class HashUtility
```
## Methods
### ComputeMD5(string)
计算字符串的MD5哈希值

```csharp title="Declaration"
public static string ComputeMD5(string value)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *value* |

### ComputeFileMD5(string)
计算文件的MD5哈希值

```csharp title="Declaration"
public static string ComputeFileMD5(string filePath)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *filePath* |

### ComputeMD5(Stream)
计算数据流的MD5哈希值

```csharp title="Declaration"
public static string ComputeMD5(Stream stream)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.IO.Stream` | *stream* |

### ComputeMD5(byte[])
计算字节数组的MD5哈希值

```csharp title="Declaration"
public static string ComputeMD5(byte[] buffer)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Byte[]` | *buffer* |

### ComputeCrc32(string)
计算字符串的CRC32哈希值

```csharp title="Declaration"
public static string ComputeCrc32(string value)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *value* |

### ComputeCrc32AsUInt(string)
计算字符串的CRC32值（返回无符号整数）

```csharp title="Declaration"
public static uint ComputeCrc32AsUInt(string value)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *value* |

### ComputeFileCrc32(string)
计算文件的CRC32哈希值

```csharp title="Declaration"
public static string ComputeFileCrc32(string filePath)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *filePath* |

### ComputeFileCrc32AsUInt(string)
计算文件的CRC32值（返回无符号整数）

```csharp title="Declaration"
public static uint ComputeFileCrc32AsUInt(string filePath)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *filePath* |

### ComputeCrc32(Stream)
计算数据流的CRC32哈希值

```csharp title="Declaration"
public static string ComputeCrc32(Stream stream)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.IO.Stream` | *stream* |

### ComputeCrc32AsUInt(Stream)
计算数据流的CRC32值（返回无符号整数）

```csharp title="Declaration"
public static uint ComputeCrc32AsUInt(Stream stream)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.IO.Stream` | *stream* |

### ComputeCrc32(byte[])
计算字节数组的CRC32哈希值

```csharp title="Declaration"
public static string ComputeCrc32(byte[] buffer)
```

##### Returns

`System.String`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Byte[]` | *buffer* |

### ComputeCrc32AsUInt(byte[])
计算字节数组的CRC32值（返回无符号整数）

```csharp title="Declaration"
public static uint ComputeCrc32AsUInt(byte[] buffer)
```

##### Returns

`System.UInt32`

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Byte[]` | *buffer* |

