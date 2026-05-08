---
title: Class TreeViewer
sidebar_label: TreeViewer
description: "树形列表视图"
---
# Class TreeViewer
树形列表视图

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TreeViewer : VisualElement, IEventHandler, IResolvedStyle, ITransform, ITransitionAnimations, IExperimentalFeatures, IVisualElementScheduler
```
## Properties
### MakeItem
制作列表元素

```csharp title="Declaration"
public Action<VisualElement> MakeItem { get; set; }
```
### BindItem
绑定列表数据

```csharp title="Declaration"
public Action<VisualElement, object> BindItem { get; set; }
```
## Methods
### AddRootItem(TreeNode)
添加单个根节点

```csharp title="Declaration"
public void AddRootItem(TreeNode rootNode)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.TreeNode](/docs/api/YooAsset.Editor/TreeNode) | *rootNode* | 要添加的根节点 |

### AddRootItems(List&lt;TreeNode&gt;)
批量添加根节点

```csharp title="Declaration"
public void AddRootItems(List<TreeNode> rootNodes)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Collections.Generic.List<YooAsset.Editor.TreeNode>` | *rootNodes* | 要添加的根节点集合 |

### ClearAll()
清理数据

```csharp title="Declaration"
public void ClearAll()
```
### RebuildView()
重新绘制视图

```csharp title="Declaration"
public void RebuildView()
```

## Implements

* `UnityEngine.UIElements.IEventHandler`
* `UnityEngine.UIElements.IResolvedStyle`
* `UnityEngine.UIElements.ITransform`
* `UnityEngine.UIElements.Experimental.ITransitionAnimations`
* `UnityEngine.UIElements.IExperimentalFeatures`
* `UnityEngine.UIElements.IVisualElementScheduler`
