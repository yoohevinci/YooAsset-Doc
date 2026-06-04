# [三方框架] Wwise支持

通过 Wwise 路径接口实现 SoundBank 音频热更。

Wwise在iOS和Android平台，提供了API用于设置SoundBank路径。

AkSoundEngine::SetBasePath()设置基础目录。

```
SetBasePath的默认路径为：Application.streamingAssetsPath/Audio/GeneratedSoundBanks/(Platform)
```

AkSoundEngine::AddBasePath()设置热更目录，该方法可以设置多个更新目录。

```
AddBasePath的默认路径为：Application.persistentDataPath
```

**加载规则**

LoadBank时会从最后一次AddBasePath的路径开始搜索，依次向前最后到SetBasePath的路径，搜索到第一个目标SoundBank后加载。

**伪代码示例**

```csharp
// 在资源收集界面，将SoundBank文件目录设置为原生文件（PackRawFile)，并增加一个Tag标记。
public IEnumerator Start()
{
    ......
        
    var package = YooAssets.GetPackage("DefaultPackage");
    string soundbankTag = "soundbank";
    string location = "Assets/GameRes/Wwise/Init.bnk";
    string soundbankFileName = Path.GetFileName(location);
    
    // 通过Tag标记下载更新的音频文件
    var downloader = package.CreateResourceDownloader(new ResourceDownloaderOptions(soundbankTag, 10, 3));
    downloader.StartDownload();
    yield return downloader;
    
    // 通过 EnsureBundleFileAsync 确保文件就绪并获取本地路径
    var ensureOp = package.EnsureBundleFileAsync(new EnsureBundleFileOptions(location));
    yield return ensureOp;
    
    // 拷贝沙盒内音频文件到指定目录下（AddBasePath方法添加的目录）
    var packageVersion = package.GetPackageVersion();
    var basePath = $"{Application.persistentDataPath}/Audio/GeneratedSoundBanks/{packageVersion}";
    var soundbankSourceFilePath = ensureOp.Detail.BundleFilePath;
    var soundbankDestFilePath = $"{basePath}/{soundbankFileName}";
    if (File.Exists(soundbankDestFilePath) == false)
    {
        Directory.CreateDirectory(basePath);
        File.Copy(soundbankSourceFilePath, soundbankDestFilePath);
    }
}
```

参考：https://zhuanlan.zhihu.com/p/32055700/
