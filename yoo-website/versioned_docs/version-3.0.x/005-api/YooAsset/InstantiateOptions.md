---
title: Struct InstantiateOptions
sidebar_label: InstantiateOptions
description: "游戏对象实例化选项"
---
# Struct InstantiateOptions
游戏对象实例化选项

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L8)
```csharp title="Declaration"
public readonly struct InstantiateOptions
```
## Properties
### IsActive
是否激活实例化对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L13)
```csharp title="Declaration"
public bool IsActive { get; }
```
### Parent
将指定给新对象的父对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L18)
```csharp title="Declaration"
public Transform Parent { get; }
```
### InWorldSpace
是否在世界空间中定位新对象
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L26)
```csharp title="Declaration"
public bool InWorldSpace { get; }
```
### Position
新对象的位置
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L31)
```csharp title="Declaration"
public Vector3 Position { get; }
```
### Rotation
新对象的旋转
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourceManager/Operations/InstantiateOptions.cs#L36)
```csharp title="Declaration"
public Quaternion Rotation { get; }
```
