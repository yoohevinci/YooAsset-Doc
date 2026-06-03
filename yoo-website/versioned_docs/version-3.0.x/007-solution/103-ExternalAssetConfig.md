# [文件系统] 工程外部资产配置

用软链接把工程外部目录映射到 Assets 收集原生文件。

Bundle Collector默认只支持Unity工程内的`Assets`或`Packages`目录资源。如果项目需要收集工程外部目录的原生文件，推荐使用系统软链接或目录联接，将外部目录映射到`Assets`目录下，再按照普通原生文件进行配置。

**Windows平台**

```powershell
mklink /J "Assets/ExternalRawFiles" "D:\ExternalRawFiles"
```

**macOS平台**

```bash
ln -s "/Users/you/ExternalRawFiles" "Assets/ExternalRawFiles"
```

创建完成后，在Bundle Collector界面配置`Assets/ExternalRawFiles`目录，并使用原生文件构建管线构建资源包。

注意事项：

1. 软链接或目录联接需要在本地工程环境中创建，团队协作时建议在项目文档或构建脚本中维护创建步骤。
2. Unity会扫描并导入链接目录下的文件，外部目录文件数量过多时可能增加编辑器刷新时间。
3. 推荐只用于原生文件目录，例如视频、音频、配置表、二进制文件等。
4. 不建议将工程外部路径直接写入Bundle Collector配置，因为收集器依赖Unity的`AssetDatabase`，无法直接识别工程外部文件。
