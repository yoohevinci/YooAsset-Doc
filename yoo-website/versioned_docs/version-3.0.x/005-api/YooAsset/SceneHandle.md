---
title: Class SceneHandle
sidebar_label: SceneHandle
description: "场景句柄，用于管理场景的加载、激活和卸载。"
---
# Class SceneHandle
场景句柄，用于管理场景的加载、激活和卸载。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L8)
```csharp title="Declaration"
public sealed class SceneHandle : HandleBase, IEnumerator, IDisposable
```
## Properties
### SceneName
场景名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L61)
```csharp title="Declaration"
public string SceneName { get; }
```
### SceneObject
场景对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L74)
```csharp title="Declaration"
public Scene SceneObject { get; }
```
## Methods
### ActivateScene()
激活场景（当同时存在多个场景时用于切换激活场景）
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L88)
```csharp title="Declaration"
public bool ActivateScene()
```

##### Returns

`System.Boolean`: 是否成功激活场景### AllowSceneActivation()
允许场景激活
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L108)
```csharp title="Declaration"
public bool AllowSceneActivation()
```

##### Returns

`System.Boolean`: 是否成功执行### UnloadSceneAsync()
卸载场景对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L132)
```csharp title="Declaration"
public UnloadSceneOperation UnloadSceneAsync()
```

##### Returns

[YooAsset.UnloadSceneOperation](../YooAsset/UnloadSceneOperation.md): 卸载场景操作## Events
### Completed
当加载完成时触发
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Handles/SceneHandle.cs#L28)
```csharp title="Declaration"
public event Action<SceneHandle> Completed
```
##### Event Type
`System.Action<YooAsset.SceneHandle>`

## Implements

* `System.Collections.IEnumerator`
* `System.IDisposable`
