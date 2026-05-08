---
title: Class ColumnStyle
sidebar_label: ColumnStyle
description: "表格列的布局与行为样式配置"
---
# Class ColumnStyle
表格列的布局与行为样式配置

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class ColumnStyle
```
## Properties
### Width
单元列宽度

```csharp title="Declaration"
public Length Width { get; set; }
```
### MinWidth
单元列最小宽度

```csharp title="Declaration"
public Length MinWidth { get; set; }
```
### MaxWidth
单元列最大宽度

```csharp title="Declaration"
public Length MaxWidth { get; set; }
```
### Stretchable
是否可伸缩

```csharp title="Declaration"
public bool Stretchable { get; set; }
```
### Searchable
是否可搜索

```csharp title="Declaration"
public bool Searchable { get; set; }
```
### Sortable
是否可排序

```csharp title="Declaration"
public bool Sortable { get; set; }
```
### Counter
是否在标题栏显示数据总数

```csharp title="Declaration"
public bool Counter { get; set; }
```
### Units
展示单位

```csharp title="Declaration"
public string Units { get; set; }
```
## Fields
### MaxValue
列宽度允许的最大值

```csharp title="Declaration"
public const float MaxValue = 8388608
```
