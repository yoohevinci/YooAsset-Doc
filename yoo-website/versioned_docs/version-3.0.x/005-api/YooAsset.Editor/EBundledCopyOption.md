---
title: Enum EBundledCopyOption
sidebar_label: EBundledCopyOption
description: "首包资源的拷贝选项"
---
# Enum EBundledCopyOption
首包资源的拷贝选项

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public enum EBundledCopyOption
```
## Fields
### None
不拷贝任何文件

```csharp title="Declaration"
None = 0
```
### ClearAndCopyAll
先清空已有文件，然后拷贝所有文件

```csharp title="Declaration"
ClearAndCopyAll = 1
```
### ClearAndCopyByTags
先清空已有文件，然后按照资源标签拷贝文件

```csharp title="Declaration"
ClearAndCopyByTags = 2
```
### OnlyCopyAll
不清空已有文件，直接拷贝所有文件

```csharp title="Declaration"
OnlyCopyAll = 3
```
### OnlyCopyByTags
不清空已有文件，直接按照资源标签拷贝文件

```csharp title="Declaration"
OnlyCopyByTags = 4
```
