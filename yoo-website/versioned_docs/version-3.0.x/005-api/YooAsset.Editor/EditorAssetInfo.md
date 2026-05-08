---
title: Class EditorAssetInfo
sidebar_label: EditorAssetInfo
---
# Class EditorAssetInfo


###### **Assembly**: YooAsset.Editor.dll
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L7)
```csharp title="Declaration"
[Serializable]
public class EditorAssetInfo : IComparable<EditorAssetInfo>
```
## Properties
### FileExtension
文件格式
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L31)
```csharp title="Declaration"
public string FileExtension { get; }
```
## Fields
### AssetPath
资源路径
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L16)
```csharp title="Declaration"
public string AssetPath
```
### AssetGUID
资源GUID
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L21)
```csharp title="Declaration"
public string AssetGUID
```
### AssetType
资源类型
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L26)
```csharp title="Declaration"
public Type AssetType
```
## Methods
### IsShaderAsset()
是否为着色器资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L58)
```csharp title="Declaration"
public bool IsShaderAsset()
```

##### Returns

`System.Boolean`
### IsSpriteAtlas()
是否为图集资源
###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L69)
```csharp title="Declaration"
public bool IsSpriteAtlas()
```

##### Returns

`System.Boolean`
### CompareTo(EditorAssetInfo)

###### [View Source](https://github.com/tuyoogame/YooAsset/blob/yoo3/Assets/YooAsset/Editor/Common/EditorAssetInfo.cs#L77)
```csharp title="Declaration"
public int CompareTo(EditorAssetInfo other)
```

##### Returns

`System.Int32`

##### Parameters

| Type | Name |
|:--- |:--- |
| [YooAsset.Editor.EditorAssetInfo](../YooAsset.Editor/EditorAssetInfo.md) | *other* |


## Implements

* `System.IComparable<YooAsset.Editor.EditorAssetInfo>`
