---
title: Class TreeNode
sidebar_label: TreeNode
description: "树形结构的节点，持有用户数据并维护父子关系"
---
# Class TreeNode
树形结构的节点，持有用户数据并维护父子关系

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class TreeNode
```
## Properties
### Children
子节点集合

```csharp title="Declaration"
public List<TreeNode> Children { get; }
```
### Parent
父节点

```csharp title="Declaration"
public TreeNode Parent { get; set; }
```
### UserData
用户数据

```csharp title="Declaration"
public object UserData { get; set; }
```
### IsExpanded
是否展开

```csharp title="Declaration"
public bool IsExpanded { get; set; }
```
## Methods
### AddChild(TreeNode)
添加子节点

```csharp title="Declaration"
public void AddChild(TreeNode child)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.TreeNode](/docs/3.0.x/api/YooAsset.Editor/TreeNode) | *child* | 要添加的子节点 |

### ClearChildren()
清理所有子节点

```csharp title="Declaration"
public void ClearChildren()
```
### GetDepth()
计算节点在树中的深度

```csharp title="Declaration"
public int GetDepth()
```

##### Returns

`System.Int32`: 从根节点到当前节点的层级数，根节点深度为 0。