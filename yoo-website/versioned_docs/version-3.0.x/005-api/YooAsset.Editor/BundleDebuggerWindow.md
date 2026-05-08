---
title: Class BundleDebuggerWindow
sidebar_label: BundleDebuggerWindow
description: "AssetBundle 调试器窗口，用于实时查看运行时资源加载与资源包状态"
---
# Class BundleDebuggerWindow
AssetBundle 调试器窗口，用于实时查看运行时资源加载与资源包状态

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class BundleDebuggerWindow : EditorWindow
```
## Methods
### OpenWindow()


```csharp title="Declaration"
[MenuItem("YooAsset/Bundle Debugger", false, 104)]
public static void OpenWindow()
```
### CreateGUI()
创建窗口界面并初始化所有子视图与远程调试连接

```csharp title="Declaration"
public void CreateGUI()
```
### OnDestroy()
释放远程调试连接并清理会话数据

```csharp title="Declaration"
public void OnDestroy()
```
### Update()
定时刷新调试视图，每秒重绘一次最新帧数据

```csharp title="Declaration"
public void Update()
```
