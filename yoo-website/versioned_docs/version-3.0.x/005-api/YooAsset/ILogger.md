---
title: Interface ILogger
sidebar_label: ILogger
description: "自定义日志处理接口"
---
# Interface ILogger
自定义日志处理接口

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooLogger.cs#L8)
```csharp title="Declaration"
public interface ILogger
```
## Methods
### Log(string)
输出普通日志
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooLogger.cs#L13)
```csharp title="Declaration"
void Log(string message)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *message* |

### LogWarning(string)
输出警告日志
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooLogger.cs#L18)
```csharp title="Declaration"
void LogWarning(string message)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *message* |

### LogError(string)
输出错误日志
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooLogger.cs#L23)
```csharp title="Declaration"
void LogError(string message)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *message* |

### LogException(Exception)
输出异常日志
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/Utility/YooLogger.cs#L28)
```csharp title="Declaration"
void LogException(Exception exception)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Exception` | *exception* |

