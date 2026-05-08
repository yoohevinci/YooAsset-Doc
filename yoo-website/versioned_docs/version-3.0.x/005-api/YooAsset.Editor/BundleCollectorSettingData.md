---
title: Class BundleCollectorSettingData
sidebar_label: BundleCollectorSettingData
description: "资源收集器配置数据管理类"
---
# Class BundleCollectorSettingData
资源收集器配置数据管理类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class BundleCollectorSettingData
```
## Properties
### IsDirty
配置数据是否被修改

```csharp title="Declaration"
public static bool IsDirty { get; }
```
### Setting
配置文件实例

```csharp title="Declaration"
public static BundleCollectorSetting Setting { get; }
```
## Methods
### SaveFile()
存储配置文件

```csharp title="Declaration"
public static void SaveFile()
```
### FixFile()
修复配置文件

```csharp title="Declaration"
public static void FixFile()
```
### ClearAll()
清空所有数据

```csharp title="Declaration"
public static void ClearAll()
```
### GetGroupActiveRuleNames()
获取所有激活规则的显示名称列表

```csharp title="Declaration"
public static List<RuleDisplayName> GetGroupActiveRuleNames()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.RuleDisplayName>`: 激活规则的显示名称列表### GetAddressRuleNames()
获取所有寻址规则的显示名称列表

```csharp title="Declaration"
public static List<RuleDisplayName> GetAddressRuleNames()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.RuleDisplayName>`: 寻址规则的显示名称列表### GetBundlePackRuleNames()
获取所有打包规则的显示名称列表

```csharp title="Declaration"
public static List<RuleDisplayName> GetBundlePackRuleNames()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.RuleDisplayName>`: 打包规则的显示名称列表### GetAssetFilterRuleNames()
获取所有过滤规则的显示名称列表

```csharp title="Declaration"
public static List<RuleDisplayName> GetAssetFilterRuleNames()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.RuleDisplayName>`: 过滤规则的显示名称列表### GetAssetIgnoreRuleNames()
获取所有忽略规则的显示名称列表

```csharp title="Declaration"
public static List<RuleDisplayName> GetAssetIgnoreRuleNames()
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.RuleDisplayName>`: 忽略规则的显示名称列表### HasGroupActiveRuleName(string)
检查是否存在指定的激活规则

```csharp title="Declaration"
public static bool HasGroupActiveRuleName(string ruleName)
```

##### Returns

`System.Boolean`: 存在则返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### HasAddressRuleName(string)
检查是否存在指定的寻址规则

```csharp title="Declaration"
public static bool HasAddressRuleName(string ruleName)
```

##### Returns

`System.Boolean`: 存在则返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### HasBundlePackRuleName(string)
检查是否存在指定的打包规则

```csharp title="Declaration"
public static bool HasBundlePackRuleName(string ruleName)
```

##### Returns

`System.Boolean`: 存在则返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### HasAssetFilterRuleName(string)
检查是否存在指定的过滤规则

```csharp title="Declaration"
public static bool HasAssetFilterRuleName(string ruleName)
```

##### Returns

`System.Boolean`: 存在则返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### HasAssetIgnoreRuleName(string)
检查是否存在指定的忽略规则

```csharp title="Declaration"
public static bool HasAssetIgnoreRuleName(string ruleName)
```

##### Returns

`System.Boolean`: 存在则返回 true，否则返回 false
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### GetGroupActiveRuleInstance(string)
获取激活规则实例

```csharp title="Declaration"
public static IGroupActiveRule GetGroupActiveRuleInstance(string ruleName)
```

##### Returns

[YooAsset.Editor.IGroupActiveRule](/docs/3.0.x/api/YooAsset.Editor/IGroupActiveRule): 激活规则实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### GetAddressRuleInstance(string)
获取寻址规则实例

```csharp title="Declaration"
public static IAddressRule GetAddressRuleInstance(string ruleName)
```

##### Returns

[YooAsset.Editor.IAddressRule](/docs/3.0.x/api/YooAsset.Editor/IAddressRule): 寻址规则实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### GetBundlePackRuleInstance(string)
获取打包规则实例

```csharp title="Declaration"
public static IBundlePackRule GetBundlePackRuleInstance(string ruleName)
```

##### Returns

[YooAsset.Editor.IBundlePackRule](/docs/3.0.x/api/YooAsset.Editor/IBundlePackRule): 打包规则实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### GetAssetFilterRuleInstance(string)
获取过滤规则实例

```csharp title="Declaration"
public static IAssetFilterRule GetAssetFilterRuleInstance(string ruleName)
```

##### Returns

[YooAsset.Editor.IAssetFilterRule](/docs/3.0.x/api/YooAsset.Editor/IAssetFilterRule): 过滤规则实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### GetAssetIgnoreRuleInstance(string)
获取忽略规则实例

```csharp title="Declaration"
public static IAssetIgnoreRule GetAssetIgnoreRuleInstance(string ruleName)
```

##### Returns

[YooAsset.Editor.IAssetIgnoreRule](/docs/3.0.x/api/YooAsset.Editor/IAssetIgnoreRule): 忽略规则实例
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *ruleName* | 规则类名 |

### ModifyShowPackageView(bool)
修改是否显示资源包裹视图

```csharp title="Declaration"
public static void ModifyShowPackageView(bool showPackageView)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *showPackageView* | 是否显示资源包裹视图 |

### ModifyShowEditorAlias(bool)
修改是否显示编辑器别名

```csharp title="Declaration"
public static void ModifyShowEditorAlias(bool showAlias)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *showAlias* | 是否显示编辑器别名 |

### ModifyUniqueBundleName(bool)
修改是否启用资源包唯一命名

```csharp title="Declaration"
public static void ModifyUniqueBundleName(bool uniqueBundleName)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.Boolean` | *uniqueBundleName* | 是否启用资源包唯一命名 |

### CreatePackage(string)
创建资源包裹

```csharp title="Declaration"
public static BundleCollectorPackage CreatePackage(string packageName)
```

##### Returns

[YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage): 新创建的资源包裹
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 资源包裹名称 |

### RemovePackage(BundleCollectorPackage)
移除资源包裹

```csharp title="Declaration"
public static void RemovePackage(BundleCollectorPackage package)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage) | *package* | 要移除的资源包裹 |

### ModifyPackage(BundleCollectorPackage)
标记资源包裹已修改

```csharp title="Declaration"
public static void ModifyPackage(BundleCollectorPackage package)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage) | *package* | 已修改的资源包裹 |

### CreateGroup(BundleCollectorPackage, string)
创建资源分组

```csharp title="Declaration"
public static BundleCollectorGroup CreateGroup(BundleCollectorPackage package, string groupName)
```

##### Returns

[YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup): 新创建的资源分组
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage) | *package* | 所属资源包裹 |
| `System.String` | *groupName* | 资源分组名称 |

### RemoveGroup(BundleCollectorPackage, BundleCollectorGroup)
移除资源分组

```csharp title="Declaration"
public static void RemoveGroup(BundleCollectorPackage package, BundleCollectorGroup group)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage) | *package* | 所属资源包裹 |
| [YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 要移除的资源分组 |

### ModifyGroup(BundleCollectorPackage, BundleCollectorGroup)
标记资源分组已修改

```csharp title="Declaration"
public static void ModifyGroup(BundleCollectorPackage package, BundleCollectorGroup group)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorPackage](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorPackage) | *package* | 所属资源包裹 |
| [YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 已修改的资源分组 |

### CreateCollector(BundleCollectorGroup, BundleCollector)
创建资源收集器条目

```csharp title="Declaration"
public static void CreateCollector(BundleCollectorGroup group, BundleCollector collector)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 所属资源分组 |
| [YooAsset.Editor.BundleCollector](/docs/3.0.x/api/YooAsset.Editor/BundleCollector) | *collector* | 资源收集器配置 |

### RemoveCollector(BundleCollectorGroup, BundleCollector)
移除资源收集器条目

```csharp title="Declaration"
public static void RemoveCollector(BundleCollectorGroup group, BundleCollector collector)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 所属资源分组 |
| [YooAsset.Editor.BundleCollector](/docs/3.0.x/api/YooAsset.Editor/BundleCollector) | *collector* | 要移除的资源收集器 |

### ModifyCollector(BundleCollectorGroup, BundleCollector)
标记资源收集器已修改

```csharp title="Declaration"
public static void ModifyCollector(BundleCollectorGroup group, BundleCollector collector)
```

##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.BundleCollectorGroup](/docs/3.0.x/api/YooAsset.Editor/BundleCollectorGroup) | *group* | 所属资源分组 |
| [YooAsset.Editor.BundleCollector](/docs/3.0.x/api/YooAsset.Editor/BundleCollector) | *collector* | 已修改的资源收集器 |

### GetPackageAllTags(string)
获取所有的资源标签

```csharp title="Declaration"
public static string GetPackageAllTags(string packageName)
```

##### Returns

`System.String`: 以分号分隔的资源标签字符串
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 资源包裹名称 |

