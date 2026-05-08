---
title: Class UxmlLoader
sidebar_label: UxmlLoader
description: "UXML 布局文件加载器"
---
# Class UxmlLoader
UXML 布局文件加载器

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UxmlLoader.cs#L15)
```csharp title="Declaration"
public class UxmlLoader
```
## Methods
### LoadWindowUxml&lt;TWindow&gt;()
加载窗口的 UXML 布局文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UxmlLoader.cs#L24)
```csharp title="Declaration"
public static VisualTreeAsset LoadWindowUxml<TWindow>() where TWindow : class
```

##### Returns

`UnityEngine.UIElements.VisualTreeAsset`: 加载到的 VisualTreeAsset 布局资源##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TWindow` | 窗口类型 |
