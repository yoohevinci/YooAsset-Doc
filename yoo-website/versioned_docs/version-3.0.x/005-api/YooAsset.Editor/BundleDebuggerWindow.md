---
title: Class BundleDebuggerWindow
sidebar_label: BundleDebuggerWindow
description: "AssetBundle 调试器窗口，用于实时查看运行时资源加载与资源包状态"
---
# Class BundleDebuggerWindow
AssetBundle 调试器窗口，用于实时查看运行时资源加载与资源包状态

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleDebugger/BundleDebuggerWindow.cs#L16)
```csharp title="Declaration"
public class BundleDebuggerWindow : EditorWindow
```
## Methods
### OpenWindow()

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleDebugger/BundleDebuggerWindow.cs#L18)
```csharp title="Declaration"
[MenuItem("YooAsset/Bundle Debugger", false, 104)]
public static void OpenWindow()
```
### CreateGUI()
创建窗口界面并初始化所有子视图与远程调试连接
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleDebugger/BundleDebuggerWindow.cs#L71)
```csharp title="Declaration"
public void CreateGUI()
```
### OnDestroy()
释放远程调试连接并清理会话数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleDebugger/BundleDebuggerWindow.cs#L165)
```csharp title="Declaration"
public void OnDestroy()
```
### Update()
定时刷新调试视图，每秒重绘一次最新帧数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleDebugger/BundleDebuggerWindow.cs#L177)
```csharp title="Declaration"
public void Update()
```
