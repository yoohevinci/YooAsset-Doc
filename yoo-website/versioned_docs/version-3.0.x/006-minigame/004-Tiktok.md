# 抖音小游戏

抖音小游戏的插件接入与文件系统初始化配置。

首先安装字节小游戏相关的Unity插件，然后导入抖音文件系统相关代码。

抖音文件系统相关代码在扩展工程内：Mini Game --> Runtime --> [TiktokFileSystem](https://github.com/tuyoogame/YooAsset/tree/yoo3/Assets/YooAsset/Samples~/Mini%20Game/Runtime/TiktokFileSystem)

**注意事项**

1. 不支持同步加载
1. 不支持下载器

**文件系统初始化**

````csharp
IEnumerator InitPackage()
{
    // 创建远程服务类
    string defaultHostServer = GetHostServerURL();
    string fallbackHostServer = GetHostServerURL();
    IRemoteService remoteService = new RemoteService(defaultHostServer, fallbackHostServer);
    
    // 创建解密服务类
    IBundleDecryptor decryptor = null; //如需资源加密，请传入自定义解密器实例。
    
    // 创建初始化参数
    var createParameters = new WebPlayModeOptions();
    createParameters.WebNetworkFileSystemParameters = TiktokFileSystemCreater.CreateFileSystemParameters(remoteService, decryptor);
    
    // 初始化ResourcePackage
    yield return package.InitializePackageAsync(createParameters);
}
````

**其它注意事项**

- 一定要禁止对资源清单版本文件进行缓存（文件名称样例：yourPackageName.version）

![image](./Image/Mini-img3.jpg)

