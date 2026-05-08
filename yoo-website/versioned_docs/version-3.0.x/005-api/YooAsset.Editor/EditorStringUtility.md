---
title: Class EditorStringUtility
sidebar_label: EditorStringUtility
description: "字符串工具类"
---
# Class EditorStringUtility
字符串工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L9)
```csharp title="Declaration"
public static class EditorStringUtility
```
## Methods
### RemoveFirstChar(string)
移除字符串的第一个字符
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L16)
```csharp title="Declaration"
public static string RemoveFirstChar(string value)
```

##### Returns

`System.String`: 去除首字符后的字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *value* | 原始字符串 |

### RemoveLastChar(string)
移除字符串的最后一个字符
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L28)
```csharp title="Declaration"
public static string RemoveLastChar(string value)
```

##### Returns

`System.String`: 去除尾字符后的字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *value* | 原始字符串 |

### SplitToList(string, char)
按分隔符拆分字符串并去除空白项
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L41)
```csharp title="Declaration"
public static List<string> SplitToList(string value, char separator)
```

##### Returns

`System.Collections.Generic.List<System.String>`: 拆分后的字符串列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *value* | 待拆分的字符串 |
| `System.Char` | *separator* | 分隔字符 |

### ParseEnum&lt;T&gt;(string)
将字符串解析为指定的枚举值
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L65)
```csharp title="Declaration"
public static T ParseEnum<T>(string name)
```

##### Returns

`<T>`: 解析后的枚举值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *name* | 枚举成员名称 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 枚举类型 |
### Substring(string, string, bool, bool)
截取字符串中匹配关键字之后的内容
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorStringUtility.cs#L85)
```csharp title="Declaration"
public static string Substring(string content, string key, bool includeKey, bool firstMatch = true)
```

##### Returns

`System.String`: 截取后的子字符串，未匹配时为原始内容
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *content* | 原始内容 |
| `System.String` | *key* | 关键字 |
| `System.Boolean` | *includeKey* | 结果中是否包含关键字 |
| `System.Boolean` | *firstMatch* | 是否使用第一次匹配的位置，为 false 时使用最后一次匹配的位置 |

