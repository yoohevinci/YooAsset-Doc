---
title: Struct BundlePackRuleResult
sidebar_label: BundlePackRuleResult
description: "打包规则的输出结果"
---
# Struct BundlePackRuleResult
打包规则的输出结果

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L48)
```csharp title="Declaration"
public readonly struct BundlePackRuleResult
```
## Methods
### IsValid()
检查是否为有效结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L68)
```csharp title="Declaration"
public bool IsValid()
```

##### Returns

`System.Boolean`: 名称和扩展名均不为空时返回 true### GetBundleName(string, bool)
获取资源包全名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L79)
```csharp title="Declaration"
public string GetBundleName(string packageName, bool uniqueBundleName)
```

##### Returns

`System.String`: 格式化后的资源包全名称
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.Boolean` | *uniqueBundleName* | 是否启用资源包名唯一化 |

### GetShareBundleName(string, bool)
获取共享资源包全名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/CollectRules/IBundlePackRule.cs#L96)
```csharp title="Declaration"
public string GetShareBundleName(string packageName, bool uniqueBundleName)
```

##### Returns

`System.String`: 格式化后的共享资源包全名称
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| `System.String` | *packageName* | 包裹名称 |
| `System.Boolean` | *uniqueBundleName* | 是否启用资源包名唯一化 |

