---
title: Class DefaultBundlePackRule
sidebar_label: DefaultBundlePackRule
description: "默认打包规则的工具类"
---
# Class DefaultBundlePackRule
默认打包规则的工具类

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L10)
```csharp title="Declaration"
public class DefaultBundlePackRule
```
## Fields
### AssetBundleFileExtension
AssetBundle文件的后缀名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L15)
```csharp title="Declaration"
public const string AssetBundleFileExtension = "bundle"
```
### RawFileExtension
原生文件的后缀名
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L20)
```csharp title="Declaration"
public const string RawFileExtension = "rawfile"
```
### ShadersBundleName
默认的Unity着色器资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L25)
```csharp title="Declaration"
public const string ShadersBundleName = "unityshaders"
```
### MonosBundleName
默认的Unity脚本资源包名称
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L30)
```csharp title="Declaration"
public const string MonosBundleName = "unitymonos"
```
## Methods
### CreateShadersPackRuleResult()
创建着色器资源包的打包结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L36)
```csharp title="Declaration"
public static BundlePackRuleResult CreateShadersPackRuleResult()
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 着色器资源包的打包规则结果### CreateMonosPackRuleResult()
创建脚本资源包的打包结果
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/BundleCollector/DefaultRules/DefaultBundlePackRule.cs#L45)
```csharp title="Declaration"
public static BundlePackRuleResult CreateMonosPackRuleResult()
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 脚本资源包的打包规则结果