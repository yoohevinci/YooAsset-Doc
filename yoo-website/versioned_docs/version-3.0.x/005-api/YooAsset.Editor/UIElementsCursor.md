---
title: Class UIElementsCursor
sidebar_label: UIElementsCursor
description: "通过反射创建自定义鼠标光标的工具类"
---
# Class UIElementsCursor
通过反射创建自定义鼠标光标的工具类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class UIElementsCursor
```
## Methods
### CreateCursor(MouseCursor)
创建指定类型的鼠标光标

```csharp title="Declaration"
public static Cursor CreateCursor(MouseCursor cursorType)
```

##### Returns

`UnityEngine.UIElements.Cursor`: 可用于 UIElements 样式的光标实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEditor.MouseCursor` | *cursorType* | 光标类型 |

