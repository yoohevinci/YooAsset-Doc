# [文件系统] 资源弱引用

在 Inspector 中以 GUID 形式引用资源，运行时按需异步加载，避免强引用带来的内存占用。

### 什么是资源弱引用

直接在脚本里用 `public GameObject prefab;` 这样的字段引用资源属于**强引用**：只要持有该字段的对象（预制体、场景、ScriptableObject）被加载，被引用的资源就会一起被加载进内存。

**资源弱引用**不直接持有资源对象，只保存资源的定位信息（包裹名 + 资源 GUID），运行时再按需异步加载、用完主动释放，让资源的加载与释放时机完全可控。

> 本功能来自扩展示例工程（Extension Sample），使用前请先导入该示例。相关代码位于：
>
> - 运行时：`Samples~/Extension Sample/Runtime/AssetReference/`
> - 编辑器：`Samples~/Extension Sample/Editor/AssetReference/`

### 使用步骤

#### 1. 声明弱引用字段

按资源类型声明对应的弱引用字段。内置提供了 `AssetReferenceGameObject`、`AssetReferenceTexture2D`、`AssetReferenceTexture3D` 等类型。

```csharp
public class AssetReferenceSample : MonoBehaviour
{
    [SerializeField]
    private AssetReferenceGameObject _prefabReference;

    [SerializeField]
    private AssetReferenceTexture2D _textureReference;
}
```

#### 2. 在 Inspector 中赋值

选中挂载脚本的对象，在 Inspector 面板中：

- **Package Name**：填写资源所属的包裹名称（默认 `DefaultPackage`）；
- **资源对象字段**：把目标资源拖拽进来，面板内部只会保存它的 GUID；
- **Asset GUID**：只读，显示当前引用的资源 GUID。

#### 3. 运行时加载与释放

加载前用 `RuntimeKeyIsValid()` 校验引用是否有效，加载得到标准的 `AssetHandle`，对象销毁时调用 `ReleaseAsset()` 释放。

```csharp
private IEnumerator Start()
{
    // 加载并实例化预制体
    if (_prefabReference.RuntimeKeyIsValid())
    {
        AssetHandle handle = _prefabReference.LoadAssetAsync();
        yield return handle;
        if (handle.Status == EOperationStatus.Succeeded)
        {
            handle.InstantiateSync(new InstantiateOptions(true, transform, false));
        }
    }

    // 加载纹理并赋值给材质
    if (_textureReference.RuntimeKeyIsValid())
    {
        AssetHandle handle = _textureReference.LoadAssetAsync();
        yield return handle;
        if (handle.Status == EOperationStatus.Succeeded)
        {
            var renderer = GetComponent<Renderer>();
            if (renderer != null)
                renderer.material.mainTexture = handle.AssetObject as Texture2D;
        }
    }
}

private void OnDestroy()
{
    _prefabReference?.ReleaseAsset();
    _textureReference?.ReleaseAsset();
}
```

### 扩展新的资源类型

如果需要引用其它类型（如 `AudioClip`、`Material`），继承 `AssetReference` 并指定资源类型即可，编辑器面板会自动适配。

```csharp
[Serializable]
public class AssetReferenceAudioClip : AssetReference
{
    public override Type AssetType => typeof(AudioClip);
}
```

### 注意事项

1. 弱引用通过 GUID 定位资源，要求目标资源已被收集进对应包裹，否则 `RuntimeKeyIsValid()` 返回 false。
2. 每次 `LoadAssetAsync()` 都会持有一个句柄，必须在不再使用时调用 `ReleaseAsset()`，否则资源无法卸载。
3. 同一个弱引用对象重复加载会抛异常，需要先 `ReleaseAsset()` 再重新加载。
4. 该功能位于扩展示例工程，可直接复制到项目中并按需扩展资源类型。
