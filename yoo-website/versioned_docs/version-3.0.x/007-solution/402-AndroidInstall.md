# [包体定制] 海外安卓分包方案

通过 Play Asset Delivery 的 install-time 资源包分发内置资源，规避 Google Play 包体限制。

### 背景

Google Play 要求以 AAB（Android App Bundle）格式上传，且单个 APK 的下载体积有限制。当游戏内置资源较大时，需要使用 Play Asset Delivery（PAD）把资源拆分到独立的 asset pack 中分发。

对于 YooAsset 的内置资源（位于 StreamingAssets），推荐使用 **install-time** 交付模式：随应用安装一起下发，安装完成即可用，访问方式和普通 StreamingAssets 一致，业务初始化流程无需改动。

### 目录对齐

install-time 模式下，名为 `assetpack` 的资源包解压后会被合并到 `assets/assetpack/` 目录。

YOO 的内置资源根目录由 `YooAssetSettings.YooFolderName` 决定，默认是 `yoo`，即内置资源存放在 `assets/yoo/` 下。

为了让 YOO 能正确读取 asset pack 里的内置资源，需要把 `YooFolderName` 修改为 `assetpack`，使内置资源根目录和 install-time 解压目录保持一致。

> 也可以反过来：把 asset pack 命名为 `yoo`，保持 YOO 默认配置不变。两者只要对齐即可。

### 操作步骤

1. 修改 `YooAssetSettings` 资源里的 `YooFolderName` 为 `assetpack`。
2. 正常构建资源包，并将内置资源放入 `StreamingAssets/assetpack/` 目录。
3. 在 Android 工程中配置 install-time 的 asset pack，使其打包目录为 `assetpack`。
4. 以 AAB 形式构建并上传 Google Play。

### 初始化

完成目录对齐后，资源初始化流程无需特殊处理，仍然使用内置文件系统（`BuiltinFileSystem`）按常规方式读取，与本地运行一致。

### 注意事项

1. `YooFolderName` 与 asset pack 名称必须严格一致，否则无法定位内置资源。
2. install-time 模式不增加运行时下载逻辑，适合“安装后即用”的内置资源。
