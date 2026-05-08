---
title: Class DefaultBundlePackRule
sidebar_label: DefaultBundlePackRule
description: "默认打包规则的工具类"
---
# Class DefaultBundlePackRule
默认打包规则的工具类

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public class DefaultBundlePackRule
```
## Fields
### AssetBundleFileExtension
AssetBundle文件的后缀名

```csharp title="Declaration"
public const string AssetBundleFileExtension = "bundle"
```
### RawFileExtension
原生文件的后缀名

```csharp title="Declaration"
public const string RawFileExtension = "rawfile"
```
### ShadersBundleName
默认的Unity着色器资源包名称

```csharp title="Declaration"
public const string ShadersBundleName = "unityshaders"
```
### MonosBundleName
默认的Unity脚本资源包名称

```csharp title="Declaration"
public const string MonosBundleName = "unitymonos"
```
## Methods
### CreateShadersPackRuleResult()
创建着色器资源包的打包结果

```csharp title="Declaration"
public static BundlePackRuleResult CreateShadersPackRuleResult()
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 着色器资源包的打包规则结果### CreateMonosPackRuleResult()
创建脚本资源包的打包结果

```csharp title="Declaration"
public static BundlePackRuleResult CreateMonosPackRuleResult()
```

##### Returns

[YooAsset.Editor.BundlePackRuleResult](../YooAsset.Editor/BundlePackRuleResult.md): 脚本资源包的打包规则结果