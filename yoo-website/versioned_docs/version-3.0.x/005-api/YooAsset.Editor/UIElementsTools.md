---
title: Class UIElementsTools
sidebar_label: UIElementsTools
description: "UIElements 通用工具方法集"
---
# Class UIElementsTools
UIElements 通用工具方法集

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L11)
```csharp title="Declaration"
public static class UIElementsTools
```
## Methods
### SetElementVisible(VisualElement, bool)
设置元素显隐
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L18)
```csharp title="Declaration"
public static void SetElementVisible(VisualElement element, bool visible)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEngine.UIElements.VisualElement` | *element* | 目标 UI 元素 |
| `System.Boolean` | *visible* | 是否可见 |

### SetElementLabelMinWidth(VisualElement, int)
设置元素内部 Label 的最小宽度
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L32)
```csharp title="Declaration"
public static void SetElementLabelMinWidth(VisualElement element, int minWidth)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEngine.UIElements.VisualElement` | *element* | 包含 Label 的父元素 |
| `System.Int32` | *minWidth* | 最小宽度（像素） |

### SetObjectFieldShowPath(ObjectField)
设置 ObjectField 的显示文本为资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L45)
```csharp title="Declaration"
public static void SetObjectFieldShowPath(ObjectField objectField)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEditor.UIElements.ObjectField` | *objectField* | 目标 ObjectField 元素 |

### RefreshObjectFieldShowPath(ObjectField)
刷新 ObjectField 的资源路径显示文本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L78)
```csharp title="Declaration"
public static void RefreshObjectFieldShowPath(ObjectField objectField)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEditor.UIElements.ObjectField` | *objectField* | 目标 ObjectField 元素 |

### SetToolbarButtonIcon(ToolbarButton, string)
设置工具栏按钮的图标
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L109)
```csharp title="Declaration"
public static void SetToolbarButtonIcon(ToolbarButton element, string iconName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEditor.UIElements.ToolbarButton` | *element* | 目标 ToolbarButton 元素 |
| `System.String` | *iconName* | Unity 内置图标名称 |

### SplitVerticalPanel(VisualElement, VisualElement, VisualElement)
将两个面板重组为垂直分屏布局
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/UIElementsTools.cs#L122)
```csharp title="Declaration"
public static void SplitVerticalPanel(VisualElement root, VisualElement panelA, VisualElement panelB)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `UnityEngine.UIElements.VisualElement` | *root* | 容纳分屏的父元素 |
| `UnityEngine.UIElements.VisualElement` | *panelA* | 上方面板 |
| `UnityEngine.UIElements.VisualElement` | *panelB* | 下方面板 |

