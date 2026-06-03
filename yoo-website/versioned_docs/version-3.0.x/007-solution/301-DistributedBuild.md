# [资源构建] 分布式构建

用 Package 机制适配美术与游戏工程分离的构建。

对于一些超大项目，一般会采取美术工程和游戏工程分开的方案。

通过使用YooAsset的Package机制，可以完美适配该方案。可以把Package理解为一个独立的资源包裹，每个Package之间不存在互相依赖的资源，都是互相独立的沙盒。

**美术工程**

该工程内包含关卡场景，3D模型，粒子特效，着色器等资源，创建名为GameArt的Package收集器。

注意：美术工程在修改完毕后，可以通过自动化工具来打包，然后上传到公司本地的资源服务器。

**游戏工程**

该工程内包含逻辑代码，UI图集，UI面板，UI字体，音频等资源，创建名为GameLogic的Package收集器。

注意：游戏工程里不要使用美术工程里的着色器，避免造成冗余！

```csharp
// 以下是项目开发阶段的解决方案
private IEnumerator Start()
{
    // 游戏工程使用编辑器模拟运行方式，可以方便快捷的验证游戏修改效果。
    {
        var package = YooAssets.CreatePackage("GameLogic");
        var initParameters = new EditorSimulateModeOptions();
        ...（省略初始化参数）
        var initializationOperation = package.InitializePackageAsync(initParameters);
        yield return initializationOperation;        
    }

    // 美术工程使用HostPlayMode运行方式，通过公司本地的资源服务器来更新。
    {
        var package = YooAssets.CreatePackage("GameArt");
        var initParameters = new HostPlayModeOptions();
        ...（省略初始化参数）
        var initializationOperation = package.InitializePackageAsync(initParameters);
        yield return initializationOperation;  
        
        //美术资源更新流程
        ......
    }
}
```
