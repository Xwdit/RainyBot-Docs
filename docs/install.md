---
description: 此页面将介绍如何配置与使用RainyBot
---

# ⚙ 安装与运行

### 运行需求

_**注意：请不要将RainyBot放置在中文路径中，否则可能会出现各类问题！**_

支持的操作系统：64位 Windows 7 或以上版本 (Mac OS/Linux支持将在后续版本中添加)

[Java 版本 >= 11](https://www.oracle.com/java/technologies/downloads/) (此需求来源于RainyBot默认集成的Mirai协议后端，核心无需任何运行环境)

可选：支持Vulkan渲染器的图形卡 (可通过硬件加速提升性能)

* RainyBot默认使用SwiftShader软件渲染器以提升兼容性，_**若您的图形卡支持Vulkan渲染器，请删除软件根目录下的vulkan-1.dll以使用硬件来加速软件窗口渲染。**_

### 配置与使用

1. 从GitHub发布页下载最新的发布版本: [**立即下载**](https://github.com/Xwdit/RainyBot-Core/releases)
2. 运行RainyBot，随后按照控制台显示的说明，打开指定的配置文件进行配置
3. 配置完毕后请重新启动RainyBot。此时若配置正确，将自动开始加载内置的协议后端（当前版本内置了Mirai协议库)
4. 请留意 _协议后端_ 的控制台信息，可能会要求您进行登陆验证等操作，您可以从以下链接获取相关帮助: [**Mirai协议库**](https://mirai.mamoe.net/topic/223/%E6%97%A0%E6%B3%95%E7%99%BB%E5%BD%95%E7%9A%84%E4%B8%B4%E6%97%B6%E5%A4%84%E7%90%86%E6%96%B9%E6%A1%88)
5. 若一切顺利，协议后端的控制台中将出现中文或英文的登录成功/加载成功字样，且RainyBot控制台中将出现加载成功字样

![Mirai控制台登录成功](../.gitbook/assets/mirai\_login\_success.png)

* 此时起可最小化协议后端的控制台窗口，后续操作均只需在RainyBot控制台中进行即可。从此处开始，将直接使用“控制台”来表示RainyBot的控制台界面
* 在控制台中输入指令`help`(或`/help`)可查看所有可用的控制台指令，例如输入`/help plugins`可查看插件管理相关指令
* 恭喜！您成功完成了RainyBot的基本配置，开始尽情使用吧\~

### 版本更新

在更新到新版本的RainyBot时，若更新日志中无特殊说明，则只需删除`RainyBot根目录/adapters/mirai/`下除`bots`文件夹以外的所有内容，删除RainyBot根目录下的`.pck(如果有)`及`.exe`文件，删除Rainybot根目录下的`project.godot(如果有)`/`project.binary(如果有)`文件以及`libs(如果有)`和`.godot(如果有)`文件夹，随后下载完整发行包并用其中所有内容直接覆盖旧版本文件即可。

### 故障排除

启动时提示当前图形卡不支持Vulkan/OpenGL，因而无法启动：

* 若您未删除软件目录下的vulkan-1.dll，则此问题通常因为您的系统中缺失SwiftShader软件渲染器所必需的Visual C++ 2015运行时，您可以[点此下载](https://docs.microsoft.com/zh-cn/cpp/windows/latest-supported-vc-redist?view=msvc-170)安装即可解决此问题。
* 若您删除了vulkan-1.dll并弹出此提示，说明您的电脑显示卡不支持Vulkan渲染器，请还原软件目录下的vulkan-1.dll以便使用软件渲染器来显示软件窗口。

### 从源码运行

如果您希望从项目源码顺利运行/编译RainyBot，请确保遵循以下条目：

* 请使用 [RainyBot的自定义Godot Engine 4.0分支](https://github.com/Xwdit/godot/tree/rainybot) 来打开本项目。
* 请将 [Mirai](https://github.com/mamoe/mirai) 与 [Mirai-Console](https://github.com/mamoe/mirai-console) 的`v2.13.3`版Jar文件及相关依赖文件置于_与Godot编辑器可执行文件同目录下_的`adapters/mirai/libs`路径中
* 请将 [Mirai-Api-HTTP](https://github.com/project-mirai/mirai-api-http) 的`v2.7.1`版Jar文件置于_与Godot编辑器可执行文件同目录下_的`adapters/mirai/plugins`路径中

RainyBot的[发布版本](https://github.com/Xwdit/RainyBot-Core/releases)中已包含以上所需文件，因此无需额外进行配置。若您在配置以上文件时遇到问题，可以直接从最新的发布版本文件包中复制`adapters`文件夹以及其中的内容，并置于`Godot编辑器可执行文件同目录下`即可。
