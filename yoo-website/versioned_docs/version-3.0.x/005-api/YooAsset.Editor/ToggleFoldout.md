---
title: Class ToggleFoldout
sidebar_label: ToggleFoldout
description: "折叠开关"
---
# Class ToggleFoldout
折叠开关

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ToggleFoldout : Toggle, IEventHandler, IResolvedStyle, ITransform, ITransitionAnimations, IExperimentalFeatures, IVisualElementScheduler, IBindable, INotifyValueChanged<bool>, IMixedValueSupport
```
## Methods
### SetValueWithoutNotify(bool)
&lt;p&gt;
Sets the value of the BaseBoolField, but does not notify the rest of the hierarchy of the change.
&lt;/p&gt;

```csharp title="Declaration"
public override void SetValueWithoutNotify(bool newValue)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Boolean` | *newValue* |

### RefreshIcon()
刷新折叠状态对应的图标

```csharp title="Declaration"
public void RefreshIcon()
```

## Implements

* `UnityEngine.UIElements.IEventHandler`
* `UnityEngine.UIElements.IResolvedStyle`
* `UnityEngine.UIElements.ITransform`
* `UnityEngine.UIElements.Experimental.ITransitionAnimations`
* `UnityEngine.UIElements.IExperimentalFeatures`
* `UnityEngine.UIElements.IVisualElementScheduler`
* `UnityEngine.UIElements.IBindable`
* `UnityEngine.UIElements.INotifyValueChanged<System.Boolean>`
* `UnityEngine.UIElements.IMixedValueSupport`
