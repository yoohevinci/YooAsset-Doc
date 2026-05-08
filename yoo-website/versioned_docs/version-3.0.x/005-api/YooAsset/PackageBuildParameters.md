---
title: Class PackageBuildParameters
sidebar_label: PackageBuildParameters
description: "资源包裹构建的调用参数"
---
# Class PackageBuildParameters
资源包裹构建的调用参数

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class PackageBuildParameters
```
## Properties
### PackageName
包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### BuildPipelineName
构建管线名称

```csharp title="Declaration"
public string BuildPipelineName { get; set; }
```
### BuildBundleType
构建资源包类型

```csharp title="Declaration"
public int BuildBundleType { get; set; }
```
### UserData
用户自定义数据

```csharp title="Declaration"
public object UserData { get; set; }
```
### AssemblyName
构建类所属的程序集名称

```csharp title="Declaration"
public string AssemblyName { get; set; }
```
### TypeFullName
构建执行的类型全称

```csharp title="Declaration"
public string TypeFullName { get; set; }
```
### MethodName
构建执行的方法名称

```csharp title="Declaration"
public string MethodName { get; set; }
```
