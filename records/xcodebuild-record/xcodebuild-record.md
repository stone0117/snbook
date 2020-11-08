@(工作笔记)

# xcodebuild-record

[TOC]

---

![Alt text](./1555130839538.png)

---

```plain
Usage: xcodebuild [-project <projectname>] [[-target <targetname>]...|-alltargets] [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings [-json]] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild [-project <projectname>] -scheme <schemeName> [-destination <destinationspecifier>]... [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings [-json]] [-showdestinations] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild -workspace <workspacename> -scheme <schemeName> [-destination <destinationspecifier>]... [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings] [-showdestinations] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild -version [-sdk [<sdkfullpath>|<sdkname>] [-json] [<infoitem>] ]
       xcodebuild -list [[-project <projectname>]|[-workspace <workspacename>]] [-json]
       xcodebuild -showsdks [-json]
       xcodebuild -exportArchive -archivePath <xcarchivepath> [-exportPath <destinationpath>] -exportOptionsPlist <plistpath>
       xcodebuild -exportNotarizedApp -archivePath <xcarchivepath> -exportPath <destinationpath>
       xcodebuild -exportLocalizations -localizationPath <path> -project <projectname> [-exportLanguage <targetlanguage>...]
       xcodebuild -importLocalizations -localizationPath <path> -project <projectname>
       xcodebuild -resolvePackageDependencies [-project <projectname>|-workspace <workspacename>] -clonedSourcePackagesDirPath <path>

Options:
    -usage                                                   打印简要用法 print brief usage
    -help                                                    打印完整用法 print complete usage
    -verbose                                                 提供额外的状态输出 provide additional status output
    -license                                                 显示Xcode和SDK许可协议 show the Xcode and SDK license agreements
    -checkFirstLaunchStatus                                  检查是否需要执行任何First Launch任务 Check if any First Launch tasks need to be performed
    -runFirstLaunch                                          安装包并同意许可 install packages and agree to the license
    -project NAME                                            构建项目NAME build the project NAME
    -target NAME                                             构建目标NAME build the target NAME
    -alltargets                                              建立所有目标 build all targets
    -workspace NAME                                          构建工作区NAME build the workspace NAME
    -scheme NAME                                             建立计划NAME build the scheme NAME
    -configuration NAME                                      使用构建配置NAME构建每个目标 use the build configuration NAME for building each target
    -xcconfig PATH                                           将PATH文件中定义的构建设置应用为覆盖 apply the build settings defined in the file at PATH as overrides
    -arch ARCH                                               构建架构ARCH的每个目标; 这将覆盖项目中定义的体系结构 build each target for the architecture ARCH; this will override architectures defined in the project
    -sdk SDK                                                 在构建项目时使用SDK作为基本SDK的名称或路径 use SDK as the name or path of the base SDK when building the project
    -toolchain NAME                                          使用带有标识符或名称NAME的工具链 use the toolchain with identifier or name NAME
    -destination DESTINATIONSPECIFIER                        使用DESTINATIONSPECIFIER描述的目标（一组逗号分隔的键=值对，描述要使用的目标）use the destination described by DESTINATIONSPECIFIER (a comma-separated set of key=value pairs describing the destination to use)
    -destination-timeout TIMEOUT                             搜索目标设备时等待TIMEOUT秒 wait for TIMEOUT seconds while searching for the destination device
    -parallelizeTargets                                      并行构建独立目标 build independent targets in parallel
    -jobs NUMBER                                             指定最大并发构建操作数 specify the maximum number of concurrent build operations
    -maximum-concurrent-test-device-destinations NUMBER      同时测试的最大设备目标数 the maximum number of device destinations to test on concurrently
    -maximum-concurrent-test-simulator-destinations NUMBER   要同时测试的最大模拟器目标数 the maximum number of simulator destinations to test on concurrently
    -parallel-testing-enabled YES|NO                         覆盖方案中的每个目标设置 overrides the per-target setting in the scheme
    -parallel-testing-worker-count NUMBER                    在并行测试期间将产生的测试运行器的确切数量 the exact number of test runners that will be spawned during parallel testing
    -maximum-parallel-testing-workers NUMBER                 并行测试期间将生成的最大测试运行器数 the maximum number of test runners that will be spawned during parallel testing
    -dry-run                                                 做除了实际运行命令之外的一切 do everything except actually running the commands
    -quiet                                                   除了警告和错误之外，不要打印任何输出 do not print any output except for warnings and errors
    -hideShellScriptEnvironment                              不要在构建日志中显示shell脚本环境变量 don't show shell script environment variables in build log
    -showsdks                                                显示已安装SDK的紧凑列表 display a compact list of the installed SDKs
    -showdestinations                                        显示目的地列表 display a list of destinations
    -showBuildSettings                                       显示构建设置和值的列表 display a list of build settings and values
    -list                                                    列出项目中的目标和配置，或工作区中的方案 lists the targets and configurations in a project, or the schemes in a workspace
    -find-executable NAME                                    在提供的SDK和工具链中显示可执行NAME的完整路径 display the full path to executable NAME in the provided SDK and toolchain
    -find-library NAME                                       在提供的SDK和工具链中显示库NAME的完整路径 display the full path to library NAME in the provided SDK and toolchain
    -version                                                 显示Xcode的版本; 使用-sdk将显示有关已安装的一个或所有SDK的信息 display the version of Xcode; with -sdk will display info about one or all installed SDKs
    -enableAddressSanitizer YES|NO                           打开或关闭地址清洁剂 turn the address sanitizer on or off
    -enableThreadSanitizer YES|NO                            打开或关闭线程消毒剂 turn the thread sanitizer on or off
    -enableUndefinedBehaviorSanitizer YES|NO                 打开或关闭未定义的行为消毒剂 turn the undefined behavior sanitizer on or off
    -resultBundlePath PATH                                   指定将放置描述发生事件的结果包的目录 specifies the directory where a result bundle describing what occurred will be placed
    -clonedSourcePackagesDirPath PATH                        指定要获取或预期要找到远程源包的目录 specifies the directory to which remote source packages are fetch or expected to be found
    -derivedDataPath PATH                                    指定构建产品和其他派生数据的目录 specifies the directory where build products and other derived data will go
    -archivePath PATH                                        指定将放置任何已创建存档的目录，或指定应导出的存档 specifies the directory where any created archives will be placed, or the archive that should be exported
    -exportArchive                                           指定应导出存档 specifies that an archive should be exported
    -exportNotarizedApp                                      导出已经过Apple公证的存档 export an archive that has been notarized by Apple
    -exportOptionsPlist PATH                                 指定配置存档导出的plist文件的路径 specifies a path to a plist file that configures archive exporting
    -enableCodeCoverage YES|NO                               测试时打开或关闭代码覆盖率 turn code coverage on or off when testing
    -exportPath PATH                                         指定从存档导出的产品的目标 specifies the destination for the product exported from an archive
    -skipUnavailableActions                                  指定应跳过不能执行的方案操作，而不是导致失败 specifies that scheme actions that cannot be performed should be skipped instead of causing a failure
    -exportLocalizations                                     出口完成和未完成的项目本地化 exports completed and outstanding project localizations
    -importLocalizations                                     假定在Xcode中创建了任何必要的本地化资源，为项目导入本地化 imports localizations for a project, assuming any necessary localized resources have been created in Xcode
    -localizationPath                                        指定XLIFF本地化文件的路径 specifies a path to XLIFF localization files
    -exportLanguage                                          指定本地化导出中包含的多个可选ISO 639-1语言 specifies multiple optional ISO 639-1 languages included in a localization export
    -xctestrun                                               指定测试运行规范的路径 specifies a path to a test run specification
    -only-testing                                            通过指定包含和排除其他测试的测试来约束测试 constrains testing by specifying tests to include, and excluding other tests
    -only-testing:TEST-IDENTIFIER                            通过指定包含和排除其他测试的测试来约束测试 constrains testing by specifying tests to include, and excluding other tests
    -skip-testing                                            通过指定要排除的测试来约束测试，但包括其他测试 constrains testing by specifying tests to exclude, but including other tests
    -skip-testing:TEST-IDENTIFIER                            通过指定要排除的测试来约束测试，但包括其他测试 constrains testing by specifying tests to exclude, but including other tests
    -testLanguage                                            通过指定运行测试的ISO 639-1语言来约束测试 constrains testing by specifying ISO 639-1 language in which to run the tests
    -testRegion                                              通过指定运行测试的ISO 3166-1区域来约束测试 constrains testing by specifying ISO 3166-1 region in which to run the tests
    -resolvePackageDependencies                              解决项目或工作空间引用的任何包依赖项 resolves any package dependencies referenced by the project or workspace
    -json                                                    输出为JSON（注意：-json暗示-quiet） output as JSON (note: -json implies -quiet)
    -allowProvisioningUpdates                                允许xcodebuild与Apple Developer网站进行通信。 对于自动签名的目标，xcodebuild将创建和更新配置文件，应用程序ID和证书。 对于手动签名的目标，xcodebuild将下载缺失或更新的配置文件。 需要在Xcode的“帐户”偏好设置面板中添加开发人员帐户。 Allow xcodebuild to communicate with the Apple Developer website. For automatically signed targets, xcodebuild will create and update profiles, app IDs, and certificates. For manually signed targets, xcodebuild will download missing or updated provisioning profiles. Requires a developer account to have been added in Xcode's Accounts preference pane.
    -allowProvisioningDeviceRegistration                     如有必要，允许xcodebuild在开发人员门户上注册目标设备。 仅当传递-allowProvisioningUpdates时，此标志才会生效。 Allow xcodebuild to register your destination device on the developer portal if necessary. This flag only takes effect if -allowProvisioningUpdates is also passed.
    -showBuildTimingSummary                                  显示构建期间调用的所有命令的计时报告 display a report of the timings of all the commands invoked during the build

Available keys for -exportOptionsPlist:
-exportOptionsPlist的可用键：

	compileBitcode : Bool

		对于非App Store导出，Xcode应该从bitcode重新编译应用程序吗？默认为YES。
		For non-App Store exports, should Xcode re-compile the app from bitcode? Defaults to YES.

	destination : String

		确定应用程序是在本地导出还是上传到Apple。选项是导出或上传。可用选项因所选分发方法而异。默认为导出。
		Determines whether the app is exported locally or uploaded to Apple. Options are export or upload. The available options vary based on the selected distribution method. Defaults to export.

	embedOnDemandResourcesAssetPacksInBundle : Bool

		对于非App Store的出口，如果应用程序使用按需资源，这是YES，资产包被嵌入到应用程序包，使应用程序可以无需服务器托管资产包进行测试。除非指定了onDemandResourcesAssetPacksBaseURL，否则默认为YES。
		For non-App Store exports, if the app uses On Demand Resources and this is YES, asset packs are embedded in the app bundle so that the app can be tested without a server to host asset packs. Defaults to YES unless onDemandResourcesAssetPacksBaseURL is specified.

	generateAppStoreInformation : Bool
		
		对于App Store导出，Xcode应该生成App Store信息以便使用iTMSTransporter上传吗？默认为NO。
		For App Store exports, should Xcode generate App Store Information for uploading with iTMSTransporter? Defaults to NO.

	iCloudContainerEnvironment : String

		如果应用程序使用CloudKit，这种配置“com.apple.developer.icloud容器环境”的权利。可用选项因使用的配置文件类型而异，但可能包括：开发和生产。
		If the app is using CloudKit, this configures the "com.apple.developer.icloud-container-environment" entitlement. Available options vary depending on the type of provisioning profile used, but may include: Development and Production.

	installerSigningCertificate : String

		仅限手动签名。提供用于签名的证书名称，SHA-1哈希或自动选择器。自动选择器允许Xcode选择最新安装的特定类型的证书。可用的自动选择器是“Mac Installer Distribution”和“Developer ID Installer”。默认为与当前分配方法匹配的自动证书选择器。
		For manual signing only. Provide a certificate name, SHA-1 hash, or automatic selector to use for signing. Automatic selectors allow Xcode to pick the newest installed certificate of a particular type. The available automatic selectors are "Mac Installer Distribution" and "Developer ID Installer". Defaults to an automatic certificate selector matching the current distribution method.

	manifest : Dictionary

		对于非App Store导出，用户可以通过在Web浏览器中打开分发清单文件，通过Web下载您的应用程序。为了产生一个分配清单，这个键的值应该是有三个子键的字典：appURL，displayImageURL，fullSizeImageURL。使用按需资源时，需要额外的子键assetPackManifestURL。
		For non-App Store exports, users can download your app over the web by opening your distribution manifest file in a web browser. To generate a distribution manifest, the value of this key should be a dictionary with three sub-keys: appURL, displayImageURL, fullSizeImageURL. The additional sub-key assetPackManifestURL is required when using on-demand resources.

	method : String

		描述Xcode如何导出存档。可用选项：应用商店，验证，特设，包装，企业发展，开发者ID，和Mac的应用程序。选项列表因归档类型而异。默认为开发。
		Describes how Xcode should export the archive. Available options: app-store, validation, ad-hoc, package, enterprise, development, developer-id, and mac-application. The list of options varies based on the type of archive. Defaults to development.

	onDemandResourcesAssetPacksBaseURL : String

		对于非App Store的出口，如果应用程序使用按需资源和embedOnDemandResourcesAssetPacksInBundle不是YES，这应该是一个基本的URL指定，其中资产包将要举行。这会将应用程序配置为从指定的URL下载资产包。
		For non-App Store exports, if the app uses On Demand Resources and embedOnDemandResourcesAssetPacksInBundle isn't YES, this should be a base URL specifying where asset packs are going to be hosted. This configures the app to download asset packs from the specified URL.

	provisioningProfiles : Dictionary

		仅限手动签名。指定用于应用程序中每个可执行文件的配置文件。此字典中的键是可执行文件的包标识符;值是要使用的配置文件名或UUID。
		For manual signing only. Specify the provisioning profile to use for each executable in your app. Keys in this dictionary are the bundle identifiers of executables; values are the provisioning profile name or UUID to use.

	signingCertificate : String

		仅限手动签名。提供用于签名的证书名称，SHA-1哈希或自动选择器。自动选择器允许Xcode选择最新安装的特定类型的证书。可用自动选择器是“Mac应用程序分发”，“iOS开发”，“iOS的分布”，“开发者ID的应用”和“Mac开发者”。默认为与当前分配方法匹配的自动证书选择器。
		For manual signing only. Provide a certificate name, SHA-1 hash, or automatic selector to use for signing. Automatic selectors allow Xcode to pick the newest installed certificate of a particular type. The available automatic selectors are "Mac App Distribution", "iOS Developer", "iOS Distribution", "Developer ID Application", and "Mac Developer". Defaults to an automatic certificate selector matching the current distribution method.

	signingStyle : String

		重新签名应用程序以进行分发时使用的签名样式。选项是手动或自动的。归档时自动签名的应用程序可以在分发期间手动签名或自动签名，默认为自动签名。归档时手动签名的应用程序必须在分发期间手动签名，因此将忽略signingStyle的值
		The signing style to use when re-signing the app for distribution. Options are manual or automatic. Apps that were automatically signed when archived can be signed manually or automatically during distribution, and default to automatic. Apps that were manually signed when archived must be manually signed during distribtion, so the value of signingStyle is ignored.

	stripSwiftSymbols : Bool

		您的IPA中的符号是否应从Swift库中删除？默认为YES。
		Should symbols be stripped from Swift libraries in your IPA? Defaults to YES.

	teamID : String

		用于此导出的Developer Portal团队。默认为用于构建存档的团队。
		The Developer Portal team to use for this export. Defaults to the team used to build the archive.

	thinning : String

		对于非App Store导出，Xcode应该为一个或多个设备变体缩小包装吗？可用选项：<无>（Xcode生成非稀疏的通用应用程序），<thin-for-all-variants>（Xcode生成通用应用程序和所有可用的稀疏变体），或特定设备的模型标识符（例如“ iPhone7,1" ）。默认为<无>。
		For non-App Store exports, should Xcode thin the package for one or more device variants? Available options: <none> (Xcode produces a non-thinned universal app), <thin-for-all-variants> (Xcode produces a universal app and all available thinned variants), or a model identifier for a specific device (e.g. "iPhone7,1"). Defaults to <none>.

	uploadBitcode : Bool

		对于App Store导出，该软件包是否应包含bitcode？默认为YES。
		For App Store exports, should the package include bitcode? Defaults to YES.

	uploadSymbols : Bool

		对于App Store导出，包应该包含符号吗？默认为YES。
		For App Store exports, should the package include symbols? Defaults to YES.
```
