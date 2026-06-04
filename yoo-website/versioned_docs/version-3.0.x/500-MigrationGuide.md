# 迁移指南

本兼容层允许大部分 v2.3 业务代码在 v3.x 下**零修改编译通过**。所有兼容 API 均标记了 `[Obsolete]`，编译时会输出警告提示迁移到 v3 新接口。

### 启用兼容层

兼容代码默认**不参与编译**，需要手动添加编译宏才能启用：

**Unity Editor**：`Edit → Project Settings → Player → Scripting Define Symbols`，添加 `YOOASSET_LEGACY_API`

添加后重新编译即可生效。当所有业务代码已迁移到 v3 新接口后，移除该宏即可彻底关闭兼容层。

---

### API 对照表（自动兼容）

#### 1.1 枚举与状态

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>EOperationStatus.Succeed</code></td>
        <td><code>EOperationStatus.Succeeded</code></td>
      </tr>
      <tr>
        <td><code>EFileClearMode.ClearAllBundleFiles</code></td>
        <td><code>"ClearAllBundleFiles"</code> (字符串)</td>
      </tr>
      <tr>
        <td><code>EBundleType.VirtualBundle</code></td>
        <td><code>EBundleType.VirtualAssetBundle</code></td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.2 HandleBase

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>handle.LastError</code></td>
        <td><code>handle.Error</code></td>
      </tr>
      <tr>
        <td><code>await handle.Task</code></td>
        <td><code>await handle</code></td>
      </tr>
      <tr>
        <td><code>handle.GetDownloadStatus()</code></td>
        <td>已移除</td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.3 SceneHandle

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>sceneHandle.UnSuspend()</code></td>
        <td><code>sceneHandle.AllowSceneActivation()</code></td>
      </tr>
      <tr>
        <td><code>sceneHandle.UnloadAsync()</code></td>
        <td><code>sceneHandle.UnloadSceneAsync()</code></td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.4 BundleFileHandle（原 RawFileHandle）

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>package.LoadRawFileSync(location)</code></td>
        <td><code>package.LoadBundleFileSync(location)</code></td>
      </tr>
      <tr>
        <td><code>package.LoadRawFileAsync(location, priority)</code></td>
        <td><code>package.LoadBundleFileAsync(location, priority)</code></td>
      </tr>
      <tr>
        <td><code>RawFileHandle handle = ...</code></td>
        <td><code>BundleFileHandle handle = ...</code></td>
      </tr>
      <tr>
        <td><code>handle.GetRawFilePath()</code></td>
        <td><code>EnsureBundleFileAsync()</code> → <code>op.Detail.BundleFilePath</code></td>
      </tr>
      <tr>
        <td><code>handle.GetRawFileData()</code></td>
        <td><code>LoadAssetAsync&lt;RawFileObject&gt;()</code> → <code>obj.GetBytes()</code></td>
      </tr>
      <tr>
        <td><code>handle.GetRawFileText()</code></td>
        <td><code>LoadAssetAsync&lt;RawFileObject&gt;()</code> → <code>obj.GetText()</code></td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.5 AssetHandle 实例化

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>handle.InstantiateSync(parent)</code></td>
        <td><code>handle.InstantiateSync(new InstantiateOptions(...))</code></td>
      </tr>
      <tr>
        <td><code>handle.InstantiateSync(parent, worldPositionStays)</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>handle.InstantiateSync(position, rotation)</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>handle.InstantiateSync(position, rotation, parent)</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>handle.InstantiateAsync(parent, actived)</code></td>
        <td><code>handle.InstantiateAsync(new InstantiateOptions(...))</code></td>
      </tr>
      <tr>
        <td><code>handle.InstantiateAsync(parent, worldPositionStays, actived)</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>handle.InstantiateAsync(position, rotation, actived)</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>handle.InstantiateAsync(position, rotation, parent, actived)</code></td>
        <td>同上</td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.6 DownloaderOperation

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>downloader.BeginDownload()</code></td>
        <td><code>downloader.StartDownload()</code></td>
      </tr>
      <tr>
        <td><code>downloader.DownloadFinishCallback = ...</code></td>
        <td><code>downloader.DownloadCompleted += ...</code></td>
      </tr>
      <tr>
        <td><code>downloader.DownloadUpdateCallback = ...</code></td>
        <td><code>downloader.DownloadProgressChanged += ...</code></td>
      </tr>
      <tr>
        <td><code>downloader.DownloadErrorCallback = ...</code></td>
        <td><code>downloader.DownloadError += ...</code></td>
      </tr>
      <tr>
        <td><code>downloader.DownloadFileBeginCallback = ...</code></td>
        <td><code>downloader.DownloadFileStarted += ...</code></td>
      </tr>
    </tbody>
  </table>
</div>

> **注意**：v2.3 的 `DownloadError` 委托名与 v3 的 `DownloadError` event 冲突，已重命名为 `DownloadErrorDelegate`。如果你的旧代码中直接引用了 `DownloaderOperation.DownloadError` 委托类型，需要改为 `DownloadErrorDelegate`。

#### 1.7 ResourcePackage

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>package.InitializeAsync(parameters)</code></td>
        <td><code>package.InitializePackageAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.DestroyAsync()</code></td>
        <td><code>package.DestroyPackageAsync()</code></td>
      </tr>
      <tr>
        <td><code>package.RequestPackageVersionAsync(bool, int)</code></td>
        <td><code>package.RequestPackageVersionAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.UpdatePackageManifestAsync(version, timeout)</code></td>
        <td><code>package.LoadPackageManifestAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.PreDownloadContentAsync(version, timeout)</code></td>
        <td><code>package.PrefetchManifestAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.ClearCacheFilesAsync(mode, param)</code></td>
        <td><code>package.ClearCacheAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.UnloadUnusedAssetsAsync(loopCount)</code></td>
        <td><code>package.UnloadUnusedAssetsAsync(options)</code></td>
      </tr>
      <tr>
        <td><code>package.IsNeedDownloadFromRemote(location)</code></td>
        <td><code>package.GetDownloadSize(location) &gt; 0</code></td>
      </tr>
      <tr>
        <td><code>package.CheckLocationValid(location)</code></td>
        <td><code>package.IsLocationValid(location)</code></td>
      </tr>
      <tr>
        <td><code>package.GetAssetInfoByGUID(guid)</code></td>
        <td><code>package.GetAssetInfoByGuid(guid)</code></td>
      </tr>
      <tr>
        <td><code>package.CreateResourceDownloader(maxNum, retry)</code></td>
        <td><code>package.CreateResourceDownloader(options)</code></td>
      </tr>
      <tr>
        <td><code>package.CreateBundleDownloader(...)</code></td>
        <td><code>package.CreateResourceDownloader(bundleOptions)</code></td>
      </tr>
      <tr>
        <td><code>package.CreateResourceUnpacker(maxNum, retry)</code></td>
        <td><code>package.CreateResourceUnpacker(options)</code></td>
      </tr>
      <tr>
        <td><code>package.CreateResourceImporter(paths, maxNum, retry)</code></td>
        <td><code>package.CreateResourceImporter(bundleImporterOptions)</code></td>
      </tr>
      <tr>
        <td><code>package.LoadRawFileSync(location)</code></td>
        <td><code>package.LoadBundleFileSync(location)</code></td>
      </tr>
      <tr>
        <td><code>package.LoadRawFileAsync(location, priority)</code></td>
        <td><code>package.LoadBundleFileAsync(location, priority)</code></td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.8 YooAssets 静态类

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>YooAssets.Initialized</code></td>
        <td><code>YooAssets.IsInitialized</code></td>
      </tr>
      <tr>
        <td><code>YooAssets.GetAllPackages()</code></td>
        <td><code>YooAssets.GetPackages()</code></td>
      </tr>
      <tr>
        <td><code>YooAssets.TryGetPackage(name)</code> 返回 null</td>
        <td><code>YooAssets.TryGetPackage(name, out pkg)</code></td>
      </tr>
      <tr>
        <td><code>YooAssets.RemovePackage(package)</code> 传入实例</td>
        <td><code>YooAssets.RemovePackage(packageName)</code> 传入字符串</td>
      </tr>
      <tr>
        <td><code>YooAssets.SetOperationSystemMaxTimeSlice(ms)</code></td>
        <td><code>YooAssets.SetAsyncOperationMaxTimeSlice(ms)</code></td>
      </tr>
      <tr>
        <td><code>YooAssets.SetDownloadSystemUnityWebRequest(...)</code></td>
        <td>已移除</td>
      </tr>
      <tr>
        <td><code>YooAssets.StartOperation(gameAsyncOp)</code></td>
        <td>已移除</td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.9 文件系统参数

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 写法</th>
        <th>v3 新写法</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>params.FileSystemClass</code></td>
        <td><code>params.FileSystemTypeName</code></td>
      </tr>
      <tr>
        <td><code>CreateDefaultBuildinFileSystemParameters(decryptSvc, root)</code></td>
        <td><code>CreateDefaultBuiltinFileSystemParameters(root)</code></td>
      </tr>
      <tr>
        <td><code>CreateDefaultCacheFileSystemParameters(remoteSvc, decryptSvc, root)</code></td>
        <td><code>CreateDefaultSandboxFileSystemParameters(remoteService, root)</code></td>
      </tr>
      <tr>
        <td><code>CreateDefaultWebServerFileSystemParameters(webDecryptSvc, disableCache)</code></td>
        <td><code>CreateDefaultWebServerFileSystemParameters(disableCache)</code></td>
      </tr>
      <tr>
        <td><code>CreateDefaultWebRemoteFileSystemParameters(remoteSvc, webDecryptSvc, disableCache)</code></td>
        <td><code>CreateDefaultWebNetworkFileSystemParameters(remoteService, disableCache)</code></td>
      </tr>
      <tr>
        <td><code>FileSystemParametersDefine.XXX</code> 常量</td>
        <td><code>EFileSystemParameter.Xxx</code> 枚举</td>
      </tr>
      <tr>
        <td><code>IRemoteServices</code></td>
        <td><code>IRemoteService</code></td>
      </tr>
      <tr>
        <td><code>IManifestRestoreServices</code></td>
        <td><code>IManifestDecryptor</code></td>
      </tr>
      <tr>
        <td><code>EOverwriteInstallClearMode</code></td>
        <td><code>EInstallCleanupMode</code></td>
      </tr>
      <tr>
        <td><code>AddParameter(FileSystemParametersDefine.REMOTE_SERVICES, remoteSvc)</code></td>
        <td>自动包装为 <code>IRemoteService</code></td>
      </tr>
      <tr>
        <td><code>AddParameter(FileSystemParametersDefine.MANIFEST_SERVICES, manifestSvc)</code></td>
        <td>自动包装为 <code>IManifestDecryptor</code></td>
      </tr>
      <tr>
        <td><code>AddParameter(FileSystemParametersDefine.INSTALL_CLEAR_MODE, oldMode)</code></td>
        <td>自动转换为 <code>EInstallCleanupMode</code></td>
      </tr>
    </tbody>
  </table>
</div>

#### 1.10 其他旧类型

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 类型</th>
        <th>v3 对应</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>InitializeParameters</code> 及子类</td>
        <td><code>EditorSimulateModeOptions</code> 等 Options 类</td>
      </tr>
      <tr>
        <td><code>InitializationOperation</code></td>
        <td><code>InitializePackageOperation</code></td>
      </tr>
      <tr>
        <td><code>DestroyOperation</code></td>
        <td><code>DestroyPackageOperation</code></td>
      </tr>
      <tr>
        <td><code>UpdatePackageManifestOperation</code></td>
        <td><code>LoadPackageManifestOperation</code></td>
      </tr>
      <tr>
        <td><code>PreDownloadContentOperation</code></td>
        <td><code>PrefetchManifestOperation</code></td>
      </tr>
      <tr>
        <td><code>GameAsyncOperation</code></td>
        <td>已移除（用 <code>AsyncOperationBase</code>）</td>
      </tr>
      <tr>
        <td><code>ImportFileInfo</code></td>
        <td><code>ImportBundleInfo</code></td>
      </tr>
      <tr>
        <td><code>DownloaderFinishData</code></td>
        <td><code>DownloadCompletedEventArgs</code></td>
      </tr>
      <tr>
        <td><code>DownloadUpdateData</code></td>
        <td><code>DownloadProgressChangedEventArgs</code></td>
      </tr>
      <tr>
        <td><code>DownloadErrorData</code></td>
        <td><code>DownloadErrorEventArgs</code></td>
      </tr>
      <tr>
        <td><code>DownloadFileData</code></td>
        <td><code>DownloadFileStartedEventArgs</code></td>
      </tr>
      <tr>
        <td><code>DownloadStatus</code></td>
        <td>已移除</td>
      </tr>
      <tr>
        <td><code>RawFileHandle</code></td>
        <td><code>BundleFileHandle</code></td>
      </tr>
      <tr>
        <td><code>EditorSimulateModeHelper.SimulateBuild(name)</code></td>
        <td><code>EditorSimulateBuildInvoker.Build(name, (int)EBundleType.VirtualAssetBundle)</code></td>
      </tr>
    </tbody>
  </table>
</div>

---

### 手动迁移项（无法兼容）

#### 2.1 默认包裹快捷 API（已彻底移除）

v2.3 中 `YooAssets.SetDefaultPackage()` 及其关联的约 50 个静态快捷方法已在 v3 中**完全移除，不提供兼容**：

```csharp
// v2.3 写法 -- 不再支持
YooAssets.SetDefaultPackage(package);
YooAssets.LoadAssetAsync<GameObject>("Assets/Prefabs/Hero.prefab");

// v3 写法 -- 必须通过 ResourcePackage 实例调用
var package = YooAssets.GetPackage("DefaultPackage");
package.LoadAssetAsync<GameObject>("Assets/Prefabs/Hero.prefab");
```

**迁移建议**：全局搜索 `YooAssets.Load`、`YooAssets.GetAssetInfo`、`YooAssets.SetDefaultPackage` 等调用，替换为 `package.Xxx(...)` 形式。

#### 2.2 DownloadError 委托名冲突

v2.3 的 `DownloaderOperation.DownloadError` 委托类型与 v3 的 `DownloadError` event 同名，兼容层已将旧委托重命名为 `DownloadErrorDelegate`。

#### 2.3 LoadSceneAsync 的 suspendLoad 参数语义反转

v2.3 的 `LoadSceneAsync(..., bool suspendLoad, ...)` 与 v3 的 `LoadSceneAsync(..., bool allowSceneActivation, ...)` 参数类型签名完全相同，仅参数名和语义相反（`suspendLoad=true` 等价于 `allowSceneActivation=false`）。由于方法签名冲突，无法通过兼容层自动处理。

```csharp
// v2.3 写法
package.LoadSceneAsync("scene", LoadSceneMode.Single, LocalPhysicsMode.None, suspendLoad: true, 100);

// v3 写法 -- 注意 bool 语义反转
package.LoadSceneAsync("scene", LoadSceneMode.Single, LocalPhysicsMode.None, allowSceneActivation: false, 100);
```

#### 2.4 ClearCacheFilesOperation 类型名冲突

v2.3 的 `ClearCacheFilesOperation` 与 v3 内部同名类冲突，无法提供兼容包装类。如果旧代码中显式引用了该类型名，需改为 `ClearCacheOperation`。通过 `package.ClearCacheFilesAsync(...)` 调用并用 `var` 接收返回值的写法不受影响。

#### 2.5 UnloadAllAssetsOptions 写法变更

v2.3 是 `class` + 公有可变字段，v3 是 `readonly struct` + 构造函数。此场景极少出现。

#### 2.6 文件系统参数迁移

##### 解密服务接口重构（必须手动迁移）

v2.3 的 `IDecryptionServices` 和 `IWebDecryptionServices` 在 v3 中已拆分为多个专用接口：

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3</th>
        <th>v3</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>IDecryptionServices.LoadAssetBundle()</code></td>
        <td><code>IBundleOffsetDecryptor</code> 或 <code>IBundleStreamDecryptor</code></td>
      </tr>
      <tr>
        <td><code>IDecryptionServices.LoadAssetBundleAsync()</code></td>
        <td>同上</td>
      </tr>
      <tr>
        <td><code>IDecryptionServices.LoadAssetBundleFallback()</code></td>
        <td><code>IBundleMemoryDecryptor</code></td>
      </tr>
      <tr>
        <td><code>IDecryptionServices.ReadFileData()</code> / <code>ReadFileText()</code></td>
        <td>已移除</td>
      </tr>
      <tr>
        <td><code>IWebDecryptionServices</code></td>
        <td>已移除，无替代</td>
      </tr>
    </tbody>
  </table>
</div>

兼容层保留了 `IDecryptionServices`、`IWebDecryptionServices` 及相关 `DecryptFileInfo` / `DecryptResult` 类型签名以避免编译错误，但**不会自动转换为 v3 解密器**。旧工厂方法中传入的 `decryptionServices` 参数会被忽略。

```csharp
// v2.3 写法
var fsp = FileSystemParameters.CreateDefaultBuildinFileSystemParameters(myDecryptSvc);

// 兼容层编译通过，但 myDecryptSvc 不生效！
// 迁移方法：实现 IBundleOffsetDecryptor 等新接口，通过 EFileSystemParameter 添加
var fsp = FileSystemParameters.CreateDefaultBuiltinFileSystemParameters();
fsp.AddParameter(EFileSystemParameter.AssetBundleDecryptor, myNewDecryptor);
```

##### 已移除的参数常量

以下 `FileSystemParametersDefine` 常量在 v3 中无稳定等价参数，兼容层保留了常量值但 v3 文件系统不会识别：

- `APPEND_FILE_EXTENSION` — 已移除
- `DISABLE_CATALOG_FILE` — 已移除
- `COPY_LOCAL_FILE_SERVICES` — 已移除
- `RESUME_DOWNLOAD_RESPONSE_CODES` — 已移除

##### 旧内部文件系统类名

v2.3 中通过字符串引用的内部文件系统类名在 v3 中已变更：

<div style={{width: '100%'}}>
  <table style={{width: '100%', minWidth: '100%', display: 'table', tableLayout: 'fixed'}}>
    <thead>
      <tr>
        <th>v2.3 类名</th>
        <th>v3 类名</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>DefaultEditorFileSystem</code></td>
        <td><code>EditorFileSystem</code></td>
      </tr>
      <tr>
        <td><code>DefaultBuildinFileSystem</code></td>
        <td><code>BuiltinFileSystem</code></td>
      </tr>
      <tr>
        <td><code>DefaultCacheFileSystem</code></td>
        <td><code>SandboxFileSystem</code></td>
      </tr>
      <tr>
        <td><code>DefaultWebServerFileSystem</code></td>
        <td><code>WebServerFileSystem</code></td>
      </tr>
      <tr>
        <td><code>DefaultWebRemoteFileSystem</code></td>
        <td><code>WebNetworkFileSystem</code></td>
      </tr>
    </tbody>
  </table>
</div>

如果旧代码中手写了类名字符串（如 `new FileSystemParameters("YooAsset.DefaultCacheFileSystem", root)`），需改为 v3 工厂方法或更新类名。

#### 2.7 BundleFilePath 获取方式变更

v2.3 中可通过 `handle.GetRawFilePath()` 直接获取资源包文件路径。v3 中此方法已移除，需改用 `EnsureBundleFileAsync` 异步操作：

```csharp
// v2.3 写法
var handle = package.LoadRawFileSync("location");
string path = handle.GetRawFilePath();

// v3 写法
var options = new EnsureBundleFileOptions("location");
var op = package.EnsureBundleFileAsync(options);
await op;
string path = op.Detail.BundleFilePath;
```

> **注意**：`EnsureBundleFileAsync` 仅确保资源包文件就绪并返回本地路径，不会将 Bundle 加载到内存。如果需要同时加载 Bundle，请继续使用 `LoadBundleFileAsync`。

#### 2.8 Web文件系统变更

将WebGL远程加载和小游戏平台资源加载流程统一到Web网络文件系统：

- `WebRemoteFileSystem` 调整为 `WebNetworkFileSystem`。
- `CreateDefaultWebRemoteFileSystemParameters` 调整为 `CreateDefaultWebNetworkFileSystemParameters`。
- `WebRemoteFileSystemParameters` 调整为 `WebNetworkFileSystemParameters`。
- WebServerFileSystem和WebNetworkFileSystem支持AssetBundle、RawBundle和ArchiveBundle加载。
- ArchiveBundle加密资源在运行时需要通过 `EFileSystemParameter.ArchiveBundleDecryptor` 配置解密器。
- BuiltinFileSystem新增 `EFileSystemParameter.BundleUnpackPolicy` 和 `EFileSystemParameter.BuiltinFileAccessor`，可用于自定义内置资源解包策略和内置文件读取方式。

#### 2.9 编辑器缓存目录迁移到 Library 下

编辑器下的缓存根目录（`YooAssetConfiguration.GetEditorCacheRoot()`）已从**项目根目录**移动到 `Library/` 目录下：

- 旧路径：`{项目根目录}/yoo/`
- 新路径：`{项目根目录}/Library/yoo/`（`YooFolderName` 为空时退化为 `{项目根目录}/Library/`）

> **注意**：这是一个 Breaking Change，但缓存可重建，首次运行会在新位置自动生成，不影响业务。升级后请手动删除项目根目录下残留的旧 `yoo/` 目录（不提供自动迁移）。

