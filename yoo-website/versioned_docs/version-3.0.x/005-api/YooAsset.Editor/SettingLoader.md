---
title: Class SettingLoader
sidebar_label: SettingLoader
description: "编辑器配置文件加载器"
---
# Class SettingLoader
编辑器配置文件加载器

###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/SettingLoader.cs#L10)
```csharp title="Declaration"
public static class SettingLoader
```
## Methods
### LoadSettingData&lt;TSetting&gt;()
加载指定类型的配置文件，如果不存在则自动创建
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/SettingLoader.cs#L17)
```csharp title="Declaration"
public static TSetting LoadSettingData<TSetting>() where TSetting : ScriptableObject
```

##### Returns

`<TSetting>`: 加载或新创建的配置文件实例##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TSetting` | 配置文件类型，必须继承自 ScriptableObject |
