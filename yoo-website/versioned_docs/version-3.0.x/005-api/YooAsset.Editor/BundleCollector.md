---
title: Class BundleCollector
sidebar_label: BundleCollector
description: "资源收集器"
---
# Class BundleCollector
资源收集器

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L12)
```csharp title="Declaration"
[Serializable]
public class BundleCollector
```
## Fields
### CollectPath
收集路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L19)
```csharp title="Declaration"
public string CollectPath
```
### CollectorGUID
收集器的GUID
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L24)
```csharp title="Declaration"
public string CollectorGUID
```
### CollectorType
收集器类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L29)
```csharp title="Declaration"
public ECollectorType CollectorType
```
### AddressRuleName
寻址规则类名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L34)
```csharp title="Declaration"
public string AddressRuleName
```
### PackRuleName
打包规则类名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L39)
```csharp title="Declaration"
public string PackRuleName
```
### FilterRuleName
过滤规则类名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L44)
```csharp title="Declaration"
public string FilterRuleName
```
### AssetTags
资源分类标签
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L49)
```csharp title="Declaration"
public string AssetTags
```
### UserData
用户自定义数据
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L54)
```csharp title="Declaration"
public string UserData
```
## Methods
### IsValid()
收集器是否有效
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L61)
```csharp title="Declaration"
public bool IsValid()
```

##### Returns

`System.Boolean`: 如果收集器配置有效返回 true### CheckConfigError()
检测配置错误
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L84)
```csharp title="Declaration"
public void CheckConfigError()
```
### FixConfigError()
修复配置错误
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L107)
```csharp title="Declaration"
public bool FixConfigError()
```

##### Returns

`System.Boolean`: 如果修复了配置错误返回 true### GetAllCollectAssets(CollectCommand, BundleCollectorGroup)
获取打包收集的资源文件
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/BundleCollector.cs#L149)
```csharp title="Declaration"
public List<CollectAssetInfo> GetAllCollectAssets(CollectCommand command, BundleCollectorGroup group)
```

##### Returns

`System.Collections.Generic.List<YooAsset.Editor.CollectAssetInfo>`: 收集到的资源信息列表
##### Parameters

| Type | Name | Description |
|:--- |:--- |:--- |
| [YooAsset.Editor.CollectCommand](../YooAsset.Editor/CollectCommand.md) | *command* | 收集命令 |
| [YooAsset.Editor.BundleCollectorGroup](../YooAsset.Editor/BundleCollectorGroup.md) | *group* | 所属分组 |

