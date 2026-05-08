---
title: Class AssetArtScannerSettingData
sidebar_label: AssetArtScannerSettingData
---
# Class AssetArtScannerSettingData


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class AssetArtScannerSettingData
```
## Properties
### IsDirty
配置数据是否被修改

```csharp title="Declaration"
public static bool IsDirty { get; }
```
### Setting


```csharp title="Declaration"
public static AssetArtScannerSetting Setting { get; }
```
## Methods
### SaveFile()
存储配置文件

```csharp title="Declaration"
public static void SaveFile()
```
### ClearAll()
清空所有数据

```csharp title="Declaration"
public static void ClearAll()
```
### ScanAll()
扫描所有项

```csharp title="Declaration"
public static void ScanAll()
```
### ScanAll(string)
扫描所有项

```csharp title="Declaration"
public static void ScanAll(string keyword)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *keyword* |

### Scan(string)
扫描单项

```csharp title="Declaration"
public static ScannerResult Scan(string scannerGUID)
```

##### Returns

[YooAsset.Editor.ScannerResult](/docs/2.3.x/api/YooAsset.Editor/ScannerResult)

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *scannerGUID* |

### CreateScanner(string, string)


```csharp title="Declaration"
public static AssetArtScanner CreateScanner(string name, string desc)
```

##### Returns

[YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner)

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.String` | *name* |
| `System.String` | *desc* |

### RemoveScanner(AssetArtScanner)


```csharp title="Declaration"
public static void RemoveScanner(AssetArtScanner scanner)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |

### ModifyScanner(AssetArtScanner)


```csharp title="Declaration"
public static void ModifyScanner(AssetArtScanner scanner)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |

### CreateCollector(AssetArtScanner, AssetArtCollector)


```csharp title="Declaration"
public static void CreateCollector(AssetArtScanner scanner, AssetArtCollector collector)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |
| [YooAsset.Editor.AssetArtCollector](/docs/2.3.x/api/YooAsset.Editor/AssetArtCollector) | *collector* |

### RemoveCollector(AssetArtScanner, AssetArtCollector)


```csharp title="Declaration"
public static void RemoveCollector(AssetArtScanner scanner, AssetArtCollector collector)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |
| [YooAsset.Editor.AssetArtCollector](/docs/2.3.x/api/YooAsset.Editor/AssetArtCollector) | *collector* |

### ModifyCollector(AssetArtScanner, AssetArtCollector)


```csharp title="Declaration"
public static void ModifyCollector(AssetArtScanner scanner, AssetArtCollector collector)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |
| [YooAsset.Editor.AssetArtCollector](/docs/2.3.x/api/YooAsset.Editor/AssetArtCollector) | *collector* |

