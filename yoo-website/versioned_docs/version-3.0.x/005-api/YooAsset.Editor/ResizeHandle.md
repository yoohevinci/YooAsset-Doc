---
title: Class ResizeHandle
sidebar_label: ResizeHandle
description: "可拖拽的水平尺寸调节手柄，用于控制目标元素宽度"
---
# Class ResizeHandle
可拖拽的水平尺寸调节手柄，用于控制目标元素宽度

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/ElementsDefine/ResizeHandle.cs#L12)
```csharp title="Declaration"
public class ResizeHandle : VisualElement, IEventHandler, IResolvedStyle, ITransform, ITransitionAnimations, IExperimentalFeatures, IVisualElementScheduler
```
## Properties
### ControlTarget
控制的UI元素
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/ElementsDefine/ResizeHandle.cs#L25)
```csharp title="Declaration"
public VisualElement ControlTarget { get; set; }
```
### ControlMinWidth
控制元素的最小宽度
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/ElementsDefine/ResizeHandle.cs#L30)
```csharp title="Declaration"
public int ControlMinWidth { get; set; }
```
### ControlMaxWidth
控制元素的最大宽度
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/ElementsDefine/ResizeHandle.cs#L35)
```csharp title="Declaration"
public int ControlMaxWidth { get; set; }
```
## Events
### ResizeChanged
当控制元素宽度变化时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/UIElements/ElementsDefine/ResizeHandle.cs#L40)
```csharp title="Declaration"
public event Action<float> ResizeChanged
```
##### Event Type
`System.Action<System.Single>`

## Implements

* `UnityEngine.UIElements.IEventHandler`
* `UnityEngine.UIElements.IResolvedStyle`
* `UnityEngine.UIElements.ITransform`
* `UnityEngine.UIElements.Experimental.ITransitionAnimations`
* `UnityEngine.UIElements.IExperimentalFeatures`
* `UnityEngine.UIElements.IVisualElementScheduler`
