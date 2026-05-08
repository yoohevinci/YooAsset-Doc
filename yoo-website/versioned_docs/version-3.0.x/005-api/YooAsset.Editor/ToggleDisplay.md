---
title: Class ToggleDisplay
sidebar_label: ToggleDisplay
description: "显示开关（眼睛图标）"
---
# Class ToggleDisplay
显示开关（眼睛图标）

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ToggleDisplay : Toggle, IEventHandler, IResolvedStyle, ITransform, ITransitionAnimations, IExperimentalFeatures, IVisualElementScheduler, IBindable, INotifyValueChanged<bool>, IMixedValueSupport
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
