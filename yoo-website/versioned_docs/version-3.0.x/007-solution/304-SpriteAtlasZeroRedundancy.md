# [资源构建] 图集打包零冗余

解决 SBP 构建管线下 SpriteAtlas 散图冗余问题。

在Unity2020以上的版本，我们会推荐使用SBP构建管线。

在使用Unity的图集系统的时候（SpriteAtlas），如何解决通过SBP构建管线造成的散图冗余的问题。

1. 确保SBP插件的版本升级到最新（例如：v1.21.25）。
2. 确保精灵散图的收集器设置为StaticAssetCollector类型。

```csharp
// 图集加载范例
public IEnumerator Start()
{
    var package = YooAssets.GetPackage("DefaultPackage");
    var handle = package.LoadAssetAsync<SpriteAtlas>(location);
    yield return handle;
    
    var atlas = handle.AssetObject as SpriteAtlas;
    _image.sprite = atlas.GetSprite("icon_test");
}
```
