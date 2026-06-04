# 微信小游戏

微信小游戏的插件接入、文件系统初始化与常见问题。

首先安装WX-WASM-SDK-V2 Unity插件，然后导入微信文件系统相关代码。

微信文件系统相关代码在扩展工程内：Mini Game --> Runtime --> [WechatFileSystem](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Mini%20Game/Runtime/WechatFileSystem)

**注意事项**

1. 不支持同步加载
2. 不支持下载器

**其它事项**

1. 构建的Bundle文件名称不要带有中文！
2. StreamingAssets目录不需要放置任何资产！
3. 一定要禁止对资源清单版本文件进行缓存（文件名称样例：yourPackageName.version）
4. URL地址里不要包含双反斜杠，例如：www.cdn.com/v1.0/android//xxx.bundle 双反斜杠会导致微信插件加载文件失败，但网络请求又不返回失败！
5. URL地址里不要包含windows的斜杠，例如：@"\\" 或者 "\\\\"
6. URL地址里不要带端口信息，例如：http://127.0.0.1:80

**文件系统初始化**

````csharp
IEnumerator InitPackage()
{
    // 创建远程服务类
    string defaultHostServer = GetHostServerURL();
    string fallbackHostServer = GetHostServerURL();
    IRemoteService remoteService = new RemoteService(defaultHostServer, fallbackHostServer);
    
    // 小游戏缓存根目录
    // 注意：此处代码根据微信插件配置来填写！
    string packageRoot = $"{WeChatWASM.WX.env.USER_DATA_PATH}/__GAME_FILE_CACHE/yoo";
    //string packageRoot = $"{WeChatWASM.WX.PluginCachePath}/yoo";
    
    // 创建初始化参数
    var createParameters = new WebPlayModeOptions();
    createParameters.WebNetworkFileSystemParameters = WechatFileSystemCreater.CreateFileSystemParameters(packageRoot, remoteService, null);
    
    // 初始化ResourcePackage
    yield return package.InitializePackageAsync(createParameters);
}
````

**微信插件配置**

假设CDN地址为：http://127.0.0.1/CDN/WebGL/yoo/ (该目录下存储的是热更文件)

根据下图配置，则初始化代码PackageRoot设置为

```csharp
string packageRoot = $"{WeChatWASM.WX.env.USER_DATA_PATH}/__GAME_FILE_CACHE/yoo";
//string packageRoot = $"{WeChatWASM.WX.PluginCachePath}/yoo";
```

![image](./Image/Mini-img2.png)

**微信官方文档**

文档：https://developers.weixin.qq.com/minigame/dev/guide/game-engine/unity-webgl-transform.html

![image](./Image/Mini-img4.png)

**常见问题**

1. WXUnload a bundle not loaded by WXAssetBundle

   一般是由于CDN填写地址和实际提供的下载地址不一致导致的。

2. MethodAccessException: Attempt to access method 'YooAsset.IFileSystem.RequestPackageVersionAsync' on type ' ' failed.

   查看日志里是否包含其它异常日志，例如：Exception: IRemoteService returned URL contains double slashes.

