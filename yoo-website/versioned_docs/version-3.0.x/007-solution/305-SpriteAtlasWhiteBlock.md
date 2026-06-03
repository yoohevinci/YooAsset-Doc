# [资源构建] 图集白块问题

解决运行时精灵图片丢失图集变白块的多种方案。

在使用YooAsset 的时候，会遇到运行时精灵图片变白块的问题。

这是因为Bundle文件的依赖加载是以资源对象的实际依赖为准，如果面板未显示对SpriteAtlas图集建立引用关系，那么在运行时会遇到白块问题。

首先确保SpriteAtlas检视面板勾选了Include In Build选项。

- **方案1：运行时动态加载图集的Bundle文件。**

  完整代码请参考：[Extension Sample/Runtime/SpriteAtlasLoader](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Extension%20Sample/Runtime/SpriteAtlasLoader)目录脚本！

  ```csharp
  public class SpriteAtlasLoader : MonoBehaviour
  {
      public void Awake()
      {
          SpriteAtlasManager.atlasRequested += RequestAtlas;
      }
      private void RequestAtlas(string atlasName, Action<SpriteAtlas> callback)
      {
          var package = YooAssets.GetPackage("DefaultPackage");
          var loadHandle = package.LoadAssetSync<SpriteAtlas>(atlasName);
          callback.Invoke(loadHandle.AssetObject as SpriteAtlas);
      }
  }
  ```

- **方案2：编辑器下手动添加图集依赖。**

  完整代码请参考：[Extension Sample/Runtime/UIPanelMonitor](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Extension%20Sample/Runtime/UIPanelMonitor)目录脚本！

  注意** : 在导入相关脚本后，需要配置相关文件夹的GUID，可以在对应的meta文件里获取！

  ```csharp
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
  	/// 面板自动引用的图集
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
          // 扫描预制体所有Image组件，找到对应的图集对象并建立引用关系
          ......
      }
  }
  ```

- **方案3：开启自动建立图集依赖模式**

  注意：目前只有可编程构建管线支持！

  强烈建议：UI面板的预制体配置PackSeparately打包规则！

  ```csharp
  private static void BuildInternal(BuildTarget buildTarget)
  {
      var buildoutputRoot = BundleBuilderHelper.GetDefaultBuildOutputRoot();
      var streamingAssetsRoot = BundleBuilderHelper.GetStreamingAssetsRoot();
  
      // 构建参数
      var buildParameters = new ScriptableBuildParameters();
      buildParameters.BuildOutputRoot = buildoutputRoot;
      buildParameters.BundledFileRoot = streamingAssetsRoot;
      buildParameters.TrackSpriteAtlasDependencies = true; //自动建立资源对象对图集的依赖关系
      ... //其它参数省略
  
      // 执行构建
      ...
   }
  ```
