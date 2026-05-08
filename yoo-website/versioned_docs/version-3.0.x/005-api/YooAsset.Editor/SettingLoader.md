---
title: Class SettingLoader
sidebar_label: SettingLoader
description: "编辑器配置文件加载器"
---
# Class SettingLoader
编辑器配置文件加载器

###### **Assembly**: YooAsset.Editor.dll

```csharp title="Declaration"
public static class SettingLoader
```
## Methods
### LoadSettingData&lt;TSetting&gt;()
加载指定类型的配置文件，如果不存在则自动创建

```csharp title="Declaration"
public static TSetting LoadSettingData<TSetting>() where TSetting : ScriptableObject
```

##### Returns

`<TSetting>`: 加载或新创建的配置文件实例##### Type Parameters
| Name | Description |
|:--- |:--- |
| `TSetting` | 配置文件类型，必须继承自 ScriptableObject |
