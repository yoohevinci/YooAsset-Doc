---
title: Class EditorWindowDefine
sidebar_label: EditorWindowDefine
description: "编辑器窗口相关的常量定义"
---
# Class EditorWindowDefine
编辑器窗口相关的常量定义

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorWindowDefine.cs#L9)
```csharp title="Declaration"
public static class EditorWindowDefine
```
## Fields
### DockedWindowTypes
停靠窗口类型集合
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorWindowDefine.cs#L22)
```csharp title="Declaration"
public static readonly ReadOnlyCollection<Type> DockedWindowTypes
```
## Methods
### GetDockedWindowTypes()
获取停靠窗口类型数组的副本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorWindowDefine.cs#L28)
```csharp title="Declaration"
public static Type[] GetDockedWindowTypes()
```

##### Returns

`System.Type[]`: 包含所有停靠窗口类型的新数组