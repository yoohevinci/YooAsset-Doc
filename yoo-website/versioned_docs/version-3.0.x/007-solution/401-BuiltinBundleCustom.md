# [包体定制] 代码定制首包资源

灵活定制应用内的包体内容，将指定资源的依赖打入首包。

YooAsset默认支持通过Tag来指定首包资源，开发者也可以灵活定制自己的首包方案。

例如：在编辑器下，运行游戏过程中记录YooAsset加载过的资源对象，然后将这些资源对象依赖的AssetBundle文件拷贝到StreamingAssets目录下作为首包内容。

```csharp
using UnityEngine;
using UnityEditor;
using YooAsset;
using YooAsset.Editor;

void BuildBundle()
{
    // 等待资源构建流程完成
    ......
    
    // 加载构建成功的资源清单对象
    byte[] manifestBytes = FileUtility.ReadAllBytes(manifestPath);
    PackageManifest manifest = PackageManifestHelper.DeserializeManifestFromBinary(manifestBytes, null);
    
    // 查找所有需要打进首包资源的依赖AB
    HashSet<PackageBundle> bundles = new HashSet<PackageBundle>();
    foreach(var assetPath in builtinAssetPathList)
    {
        if(manifest.TryGetPackageAsset(assetPath, out PackageAsset packageAsset))
        {
            var packageBundle = manifest.BundleList[packageAsset.BundleID];
            if(bundles.Contains(packageBundle) == false)
                bundles.Add(packageBundle);
        }
    }
    
    // 拷贝所有首包文件
    string root = $"{BundleBuilderHelper.GetStreamingAssetsRoot()}/{packageName}";
    foreach(var packageBundle in bundles)
    {
        string destPath = $"{root}/{packageBundle.GetFileName()}";
        ...... //拷贝文件
    }
}
```
