---
title: Class PackageDetails
sidebar_label: PackageDetails
description: "资源包裹的详细信息，用于外部查询包裹配置。"
---
# Class PackageDetails
资源包裹的详细信息，用于外部查询包裹配置。

###### **Assembly**: YooAsset.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L7)
```csharp title="Declaration"
public class PackageDetails
```
## Properties
### FileVersion
文件版本
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L12)
```csharp title="Declaration"
public int FileVersion { get; }
```
### EnableAddressable
启用可寻址资源定位
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L17)
```csharp title="Declaration"
public bool EnableAddressable { get; }
```
### SupportExtensionless
支持无后缀名的资源定位地址
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L22)
```csharp title="Declaration"
public bool SupportExtensionless { get; }
```
### LocationToLower
资源定位地址大小写不敏感
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L27)
```csharp title="Declaration"
public bool LocationToLower { get; }
```
### IncludeAssetGuid
包含资源GUID数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L32)
```csharp title="Declaration"
public bool IncludeAssetGuid { get; }
```
### ReplaceAssetPathWithAddress
使用可寻址地址代替资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L37)
```csharp title="Declaration"
public bool ReplaceAssetPathWithAddress { get; }
```
### OutputNameStyle
文件名称样式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L42)
```csharp title="Declaration"
public int OutputNameStyle { get; }
```
### BuildBundleType
构建资源包类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L47)
```csharp title="Declaration"
public int BuildBundleType { get; }
```
### BuildPipeline
构建管线名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L52)
```csharp title="Declaration"
public string BuildPipeline { get; }
```
### PackageName
资源包裹名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L57)
```csharp title="Declaration"
public string PackageName { get; }
```
### PackageVersion
资源包裹的版本信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L62)
```csharp title="Declaration"
public string PackageVersion { get; }
```
### PackageNote
资源包裹的备注信息
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L67)
```csharp title="Declaration"
public string PackageNote { get; }
```
### AssetTotalCount
主资源文件总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L72)
```csharp title="Declaration"
public int AssetTotalCount { get; }
```
### BundleTotalCount
资源包文件总数
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Runtime/ResourcePackage/PackageDetails.cs#L77)
```csharp title="Declaration"
public int BundleTotalCount { get; }
```
