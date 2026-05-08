---
title: Class PackageDetails
sidebar_label: PackageDetails
description: "资源包裹的详细信息，用于外部查询包裹配置。"
---
# Class PackageDetails
资源包裹的详细信息，用于外部查询包裹配置。

###### **Assembly**: YooAsset.dll

```csharp title="Declaration"
public class PackageDetails
```
## Properties
### FileVersion
文件版本

```csharp title="Declaration"
public int FileVersion { get; }
```
### EnableAddressable
启用可寻址资源定位

```csharp title="Declaration"
public bool EnableAddressable { get; }
```
### SupportExtensionless
支持无后缀名的资源定位地址

```csharp title="Declaration"
public bool SupportExtensionless { get; }
```
### LocationToLower
资源定位地址大小写不敏感

```csharp title="Declaration"
public bool LocationToLower { get; }
```
### IncludeAssetGuid
包含资源GUID数据

```csharp title="Declaration"
public bool IncludeAssetGuid { get; }
```
### ReplaceAssetPathWithAddress
使用可寻址地址代替资源路径

```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress { get; }
```
### OutputNameStyle
文件名称样式

```csharp title="Declaration"
public int OutputNameStyle { get; }
```
### BuildBundleType
构建资源包类型

```csharp title="Declaration"
public int BuildBundleType { get; }
```
### BuildPipeline
构建管线名称

```csharp title="Declaration"
public string BuildPipeline { get; }
```
### PackageName
资源包裹名称

```csharp title="Declaration"
public string PackageName { get; }
```
### PackageVersion
资源包裹的版本信息

```csharp title="Declaration"
public string PackageVersion { get; }
```
### PackageNote
资源包裹的备注信息

```csharp title="Declaration"
public string PackageNote { get; }
```
### AssetTotalCount
主资源文件总数

```csharp title="Declaration"
public int AssetTotalCount { get; }
```
### BundleTotalCount
资源包文件总数

```csharp title="Declaration"
public int BundleTotalCount { get; }
```
