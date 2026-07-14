# [资源构建] 图集白块问题

本文介绍运行时精灵丢失图集、显示为白块或透明块的原因，以及两种常用解决方案。

## 问题原因

UI预制体通常引用的是源图片中的 `Sprite` 对象，而不是 `.spriteatlas` 资源本身。虽然Unity在构建阶段会把Sprite的渲染数据重定向到图集纹理，但在编辑器资源依赖关系中，UI预制体不一定会显式依赖对应的 `SpriteAtlas`。

YooAsset加载资源时，会根据资源清单中记录的实际依赖加载Bundle。如果面板资源没有建立对图集Bundle的依赖，运行时只加载面板和源Sprite所在的Bundle，保存最终图集纹理的Bundle却没有被加载，Sprite便无法取得正确的纹理数据，从而显示为白块。

两种方案的核心区别如下：

- 方案1在编辑器保存UI预制体时，人为添加对图集资源的显式引用。
- 方案2在YooAsset构建资源清单时，根据SBP构建结果自动补充图集Bundle依赖。

## 关于 Include In Build

使用本文两种方案前，请确保SpriteAtlas检视面板勾选 `Include In Build`。开启后，Unity引擎会在构建时为Sprite序列化默认图集引用；相关依赖加载完成后，Sprite可以直接读取图集中的渲染数据。

## 方案1：编辑器下手动添加图集依赖

该方案在保存UI预制体时扫描所有 `Image` 组件，根据Sprite找到对应的SpriteAtlas，并将其写入 `PanelManifest.ReferencesAtlas`。序列化后的 `SpriteAtlas` 字段会形成显式资源引用，因此YooAsset能够识别并记录 `UI预制体 -> SpriteAtlas` 的依赖关系。

完整代码请参考：[Extension Sample/Runtime/UIPanelMonitor](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Extension%20Sample/Runtime/UIPanelMonitor)目录脚本。

导入相关脚本后，需要开启监控并配置项目目录的GUID。目录GUID可以从对应目录的 `.meta` 文件中获取。

```csharp
public static bool EnablePanelMonitor = true;

/// <summary>
/// 面板文件夹GUID
/// </summary>
private const string UIPanelDirectoryGUID = "12d33f33f3a55224c9c747d7bffa1c68";

/// <summary>
/// 精灵文件夹GUID
/// </summary>
private const string UISpriteDirectoryGUID = "935d7f20c085cc141a3daf9cacfabfae";

/// <summary>
/// 图集文件夹GUID
/// </summary>
private const string UIAtlasDirectoryGUID = "c355c783476322b4cacac98c5e1b46d8";
```

```csharp
public class PanelManifest : MonoBehaviour
{
    /// <summary>
    /// 面板依赖的图集列表
    /// </summary>
    public List<SpriteAtlas> ReferencesAtlas = new List<SpriteAtlas>();
}

public class UIPanelMonitor : UnityEditor.Editor
{
    [InitializeOnLoadMethod]
    static void StartInitializeOnLoadMethod()
    {
        PrefabStage.prefabSaving += OnPrefabSaving;
    }

    static void OnPrefabSaving(GameObject go)
    {
        // 扫描预制体的所有Image组件，
        // 找到对应图集并写入PanelManifest。
    }
}
```

示例按照以下约定推导图集路径：

```text
精灵路径：Assets/UISprites/Common/button.png
图集路径：Assets/UIAtlas/Common.spriteatlas
```

也就是说，精灵所在的直接父目录名必须和图集文件名一致。项目目录结构不符合该约定时，需要修改 `GetAtlasPath()` 的查找逻辑。

### 注意事项

1. 示例代码仅在Unity 2021.3及以上版本的编辑器中生效，并且 `EnablePanelMonitor` 默认关闭。
2. 示例只扫描UGUI的 `Image` 组件，不会处理 `SpriteRenderer`、UI Toolkit、自定义组件或运行时动态赋值的Sprite。
3. 扫描范围包含禁用节点，但动态创建的子节点以及运行时替换的Sprite仍需自行处理。
4. 不在指定精灵目录中的图片会被忽略；找不到约定的图集文件时会抛出异常。
5. 保存预制体后应检查 `PanelManifest` 中的图集列表是否完整，并避免手工删除该组件或引用。

## 方案2：构建时自动建立图集依赖

YooAsset的可编程构建管线可以通过 `TrackSpriteAtlasDependencies` 自动补充图集依赖：

```csharp
private static void BuildInternal(BuildTarget buildTarget)
{
    var buildOutputRoot = BundleBuilderHelper.GetDefaultBuildOutputRoot();
    var streamingAssetsRoot = BundleBuilderHelper.GetStreamingAssetsRoot();

    // 构建参数
    var buildParameters = new ScriptableBuildParameters();
    buildParameters.BuildOutputRoot = buildOutputRoot;
    buildParameters.BundledFileRoot = streamingAssetsRoot;
    buildParameters.TrackSpriteAtlasDependencies = true;
    // 其它参数省略

    // 执行构建
}
```

### 实现原理

构建过程中，YooAsset会执行以下处理：

1. 在生成构建映射时收集所有参与构建的 `SpriteAtlas` 资源及其Bundle名称。
2. 从SBP构建结果中获取Bundle依赖关系，并建立反向引用关系图。
3. 找出所有引用图集Bundle的资源包。
4. 遍历这些资源包中的主资源，将图集Bundle ID补充到主资源的依赖Bundle列表。
5. 将引用资源的标签传播给图集Bundle，保证按标签构建或发布资源时不会遗漏图集文件。

运行时加载UI预制体时，YooAsset便会根据修正后的资源清单自动加载对应的图集Bundle，不需要额外编写图集加载代码。

### 注意事项

1. 该功能仅支持 `ScriptableBuildPipeline`，使用旧版构建管线时参数不会生效。
2. Unity的 `EditorSettings.spritePackerMode` 不能为 `Disabled`，否则YooAsset不会执行图集依赖补充。
3. SpriteAtlas必须被资源收集器收集并参与当前资源包构建，否则构建映射中不存在对应图集，无法自动补充依赖。
4. 强烈建议UI面板预制体使用 `PackSeparately` 打包规则。自动修正首先根据Bundle引用关系定位图集，再将依赖补充给引用Bundle内的主资源；如果多个面板打进同一个Bundle，加载其中任意面板时都可能连带加载该Bundle涉及的全部图集。
5. 修改图集、Sprite Packer模式或打包规则后，建议执行一次完整构建，避免旧的SBP缓存干扰验证结果。

## 通用检查事项

无论采用哪种方案，都建议检查以下内容：

1. 同一图集内的所有Sprite应采用一致的打包策略，并尽量放入同一个Bundle。将它们分散到多个Bundle可能导致每个Bundle都包含一份图集纹理，造成包体和内存冗余。
2. 如果采用本文方案1或方案2显式收集SpriteAtlas，则应通过三方解包插件确认没有产生非预期冗余。
3. 在构建报告或资源清单中检查UI资源是否包含对应图集Bundle依赖。
4. 使用离线模式或联机模式加载真实Bundle进行测试。编辑器模拟模式直接访问AssetDatabase，可能掩盖Bundle依赖缺失问题。
5. 测试UI的首次打开、关闭后重新打开、资源卸载以及版本更新后的加载流程，确认图集句柄和Bundle生命周期正确。
