---
title: Class EditorAssemblyUtility
sidebar_label: EditorAssemblyUtility
description: "程序集与属性工具类"
---
# Class EditorAssemblyUtility
程序集与属性工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L13)
```csharp title="Declaration"
public static class EditorAssemblyUtility
```
## Methods
### GetAssignableTypes(Type)
获取带继承关系的所有类的类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L20)
```csharp title="Declaration"
public static List<Type> GetAssignableTypes(Type parentType)
```

##### Returns

`System.Collections.Generic.List<System.Type>`: 所有派生类型的列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Type` | *parentType* | 父类类型 |

### GetTypesWithAttribute(Type)
获取带有指定属性的所有类的类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L34)
```csharp title="Declaration"
public static List<Type> GetTypesWithAttribute(Type attrType)
```

##### Returns

`System.Collections.Generic.List<System.Type>`: 所有带有指定属性的类型列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Type` | *attrType* | 属性类型 |

### InvokeNonPublicStaticMethod(Type, string, params object[])
调用私有的静态方法
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L50)
```csharp title="Declaration"
public static object InvokeNonPublicStaticMethod(Type type, string method, params object[] parameters)
```

##### Returns

`System.Object`: 方法的返回值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Type` | *type* | 类的类型 |
| `System.String` | *method* | 类里要调用的方法名 |
| `System.Object[]` | *parameters* | 调用方法传入的参数 |

### InvokePublicStaticMethod(Type, string, params object[])
调用公开的静态方法
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L71)
```csharp title="Declaration"
public static object InvokePublicStaticMethod(Type type, string method, params object[] parameters)
```

##### Returns

`System.Object`: 方法的返回值
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Type` | *type* | 类的类型 |
| `System.String` | *method* | 类里要调用的方法名 |
| `System.Object[]` | *parameters* | 调用方法传入的参数 |

### GetAttribute&lt;T&gt;(Type)
获取指定类型上的自定义属性
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L91)
```csharp title="Declaration"
public static T GetAttribute<T>(Type type) where T : Attribute
```

##### Returns

`<T>`: 属性实例，不存在时为 null
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Type` | *type* | 目标类型 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 属性类型 |
### GetAttribute&lt;T&gt;(MethodInfo)
获取指定方法上的自定义属性
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L102)
```csharp title="Declaration"
public static T GetAttribute<T>(MethodInfo methodInfo) where T : Attribute
```

##### Returns

`<T>`: 属性实例，不存在时为 null
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Reflection.MethodInfo` | *methodInfo* | 目标方法 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 属性类型 |
### GetAttribute&lt;T&gt;(FieldInfo)
获取指定字段上的自定义属性
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Utilities/EditorAssemblyUtility.cs#L113)
```csharp title="Declaration"
public static T GetAttribute<T>(FieldInfo field) where T : Attribute
```

##### Returns

`<T>`: 属性实例，不存在时为 null
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Reflection.FieldInfo` | *field* | 目标字段 |

##### Type Parameters
| Name | Description |
|:--- |:--- |
| `T` | 属性类型 |
