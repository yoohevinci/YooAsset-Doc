# [资源分发] Steam平台支持DLC

在 Steam 平台下载 DLC 资源并解压到游戏目录加载。

在Steam官方平台下载DLC资产，然后解压到游戏目录下（通常是内置资产所在目录）。

### 推荐方案：随资源分发 Catalog 文件

在构建资源的时候将BundledCopyOption设置为`ClearAndCopyAll`。这样在内置文件输出目录下会自动生成Catalog文件（`BuiltinCatalog.bytes`），可以将该Catalog文件和资源文件一起作为DLC分发。

> Catalog文件是内置资源的查询目录文件，记录了内置目录下每个资源包的名称与校验信息。内置文件系统在初始化时会强制加载该文件来识别本地可用的内置资源。

### 手动拼装内置目录时重新生成 Catalog

如果不是直接分发构建产物，而是把下载的DLC资源手动合并进内置目录，那么必须重新生成Catalog文件，使其包含新增的DLC资源，否则内置文件系统无法识别这些文件。

可以使用扩展示例工程（Extension Sample）提供的工具：菜单 `Tools` → `Builtin Catalog Generator`，选择内置资源目录后点击生成即可。该工具会扫描目录下所有Package（以`.version`文件定位），为每个Package重新生成Catalog文件。

> 注意：旧版本通过 `DISABLE_CATALOG_FILE` 参数禁用Catalog的方案已在 v3 移除。Catalog 现在是内置文件系统的必备文件，请通过上述工具生成，不要省略。
