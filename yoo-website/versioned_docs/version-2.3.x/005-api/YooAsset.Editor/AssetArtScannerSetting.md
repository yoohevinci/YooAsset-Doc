---
title: Class AssetArtScannerSetting
sidebar_label: AssetArtScannerSetting
---
# Class AssetArtScannerSetting


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class AssetArtScannerSetting : ScriptableObject
```
## Fields
### Scanners
扫描器列表

```csharp title="Declaration"
public List<AssetArtScanner> Scanners
```
## Methods
### BeginScan(string)
开始扫描

```csharp title="Declaration"
public ScannerResult BeginScan(string scannerGUID)
```

##### Returns

[YooAsset.Editor.ScannerResult](/docs/2.3.x/api/YooAsset.Editor/ScannerResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *scannerGUID* |

### GetScanner(string)
获取指定的扫描器

```csharp title="Declaration"
public AssetArtScanner GetScanner(string scannerGUID)
```

##### Returns

[YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner)

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *scannerGUID* |

