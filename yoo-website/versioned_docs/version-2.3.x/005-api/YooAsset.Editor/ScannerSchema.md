---
title: Class ScannerSchema
sidebar_label: ScannerSchema
---
# Class ScannerSchema


###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public abstract class ScannerSchema : ScriptableObject
```
## Methods
### GetUserGuide()
获取用户指南信息

```csharp title="Declaration"
public abstract string GetUserGuide()
```

##### Returns

`System.String`
### RunScanner(AssetArtScanner)
运行生成扫描报告

```csharp title="Declaration"
public abstract ScanReport RunScanner(AssetArtScanner scanner)
```

##### Returns

[YooAsset.Editor.ScanReport](/docs/2.3.x/api/YooAsset.Editor/ScanReport)

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.AssetArtScanner](/docs/2.3.x/api/YooAsset.Editor/AssetArtScanner) | *scanner* |

### FixResult(List&lt;ReportElement&gt;)
修复扫描结果

```csharp title="Declaration"
public abstract void FixResult(List<ReportElement> fixList)
```

##### Parameters

| Type | Name |
|:--- |:--- |
| `System.Collections.Generic.List<YooAsset.Editor.ReportElement>` | *fixList* |

### CreateInspector()
创建检视面板

```csharp title="Declaration"
public virtual SchemaInspector CreateInspector()
```

##### Returns

[YooAsset.Editor.SchemaInspector](/docs/2.3.x/api/YooAsset.Editor/SchemaInspector)
