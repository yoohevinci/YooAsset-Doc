# [资源构建] 地形着色器变种收集

Unity 引擎的地形（Terrain）渲染流程比较特殊，普通的着色器变种收集方案无法完整覆盖地形相关变种。

在 YooAsset 的扩展范例里，`ShaderVariantCollector` 工具会先收集资源包裹内的所有材质资源，然后在临时场景中创建球体并挂载这些材质，通过相机渲染来触发 Unity 编辑器记录当前使用到的着色器变种。

完整代码请参考：[Extension Sample/Editor/ShaderVariantCollector](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Extension%20Sample/Editor/ShaderVariantCollector)目录脚本！

## 地形的特殊性

普通模型通常通过 `MeshRenderer` 或 `SkinnedMeshRenderer` 挂载 `Material` 参与渲染，所以将材质挂到临时球体上渲染，基本可以触发对应的材质变种。

但是地形并不是简单的 `Renderer + Material` 渲染模式。地形渲染会依赖 `Terrain` 组件、`TerrainData`、`TerrainLayer`、高度图、混合贴图、实例化开关，以及渲染管线内部的 Terrain 专用 Pass。

如果只是收集到地形使用的材质，并把该材质挂到普通球体上渲染，Unity 实际走的是普通网格渲染路径，并不会完整触发 Terrain 运行时需要的着色器变种。

所以地形着色器变种需要单独处理：在收集阶段创建临时 `Terrain` 对象，让 Unity 走真实的地形渲染流程。

## 解决方案

地形着色器变种可以作为普通材质收集流程之外的独立步骤处理。

`ShaderVariantCollector` 工具内部通过 `ESteps` 枚举控制收集流程，开发者可以在现有流程中增加一个地形处理阶段。

```csharp
private enum ESteps
{
    None,
    Prepare,
    CollectAllMaterial,
    CollectVariants,
    CollectSleeping,
    CollectTerrainVariants, //新增地形照射
    WaitingDone,
}
```

当普通材质变种收集完成后，不要直接进入 `WaitingDone` 阶段，而是先切换到 `CollectTerrainVariants` 阶段。

```csharp
if (_allMaterials.Count > 0)
{
    _elapsedTime = Stopwatch.StartNew();
    _steps = ESteps.CollectSleeping;
}
else
{
    _steps = ESteps.CollectTerrainVariants;
}
```

然后在 `InternalUpdate()` 方法中增加地形处理逻辑。

```csharp
if (_steps == ESteps.CollectTerrainVariants)
{
    // 开发者可以在这里自行实现地形资源加载和照射逻辑。
    // 例如：加载 TerrainData，创建临时 Terrain 对象，并调整相机照射地形。
    CollectTerrainVariants();

    _elapsedTime = Stopwatch.StartNew();
    _steps = ESteps.WaitingDone;
}
```

`CollectTerrainVariants()` 的具体实现由项目自行决定。核心原则是：不要只把地形材质挂到普通网格上渲染，而是创建真实的 `Terrain` 对象，让 Unity 走一遍地形专用渲染流程。

这样可以在不改动原有材质收集逻辑的前提下，为地形资源单独补充变种收集能力。
