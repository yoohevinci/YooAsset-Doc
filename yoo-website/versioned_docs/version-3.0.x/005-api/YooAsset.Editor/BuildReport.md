---
title: Class BuildReport
sidebar_label: BuildReport
description: "构建报告"
---
# Class BuildReport
构建报告

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
[Serializable]
public class BuildReport
```
## Fields
### Summary
汇总信息

```csharp title="Declaration"
public ReportSummary Summary
```
### AssetInfos
资源对象列表

```csharp title="Declaration"
public List<ReportAssetInfo> AssetInfos
```
### BundleInfos
资源包列表

```csharp title="Declaration"
public List<ReportBundleInfo> BundleInfos
```
### IndependentAssets
未被依赖的资源列表

```csharp title="Declaration"
public List<ReportIndependentAsset> IndependentAssets
```
## Methods
### GetBundleInfo(string)
获取指定名称的资源包信息

```csharp title="Declaration"
public ReportBundleInfo GetBundleInfo(string bundleName)
```

##### Returns

[YooAsset.Editor.ReportBundleInfo](../YooAsset.Editor/ReportBundleInfo.md): 匹配的资源包信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *bundleName* | 资源包名称 |

### GetAssetInfo(string)
获取指定路径的资源信息

```csharp title="Declaration"
public ReportAssetInfo GetAssetInfo(string assetPath)
```

##### Returns

[YooAsset.Editor.ReportAssetInfo](../YooAsset.Editor/ReportAssetInfo.md): 匹配的资源信息
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *assetPath* | 资源路径 |

### Serialize(string, BuildReport)
将构建报告序列化为 JSON 并写入文件

```csharp title="Declaration"
public static void Serialize(string savePath, BuildReport buildReport)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *savePath* | 文件保存路径 |
| [YooAsset.Editor.BuildReport](../YooAsset.Editor/BuildReport.md) | *buildReport* | 要序列化的构建报告 |

### Deserialize(string)
从 JSON 字符串反序列化构建报告

```csharp title="Declaration"
public static BuildReport Deserialize(string jsonData)
```

##### Returns

[YooAsset.Editor.BuildReport](../YooAsset.Editor/BuildReport.md): 反序列化后的构建报告实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *jsonData* | JSON 格式的报告数据 |

