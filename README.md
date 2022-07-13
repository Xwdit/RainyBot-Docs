---
description: 欢迎来到RainyBot官方文档！
---

# 主页

### 欢迎使用RainyBot！

这是一个新手友好，简单易上手的跨平台社交聊天机器人开发框架

### 概览

{% hint style="info" %}
提示

此处的概览不包含与使用RainyBot相关的内容，且可能较为枯燥，您可以简单浏览后直接跳转到[安装与运行](broken-reference)部分来了解如何开始使用
{% endhint %}

RainyBot是一个跨平台的机器人开发框架，基于 [Godot Engine 4.0](https://godotengine.org/) 进行开发。 本项目成立的目的，是为了建立一个低门槛，简单易用的机器人开发框架。 通过提供大量精心设计，智能且极简的交互API与预置功能，结合[GDScript脚本语言](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript\_basics.html)的简便语法， 来尽可能地提升开发效率且降低开发难度，且让更多开发经验不足，乃至无经验的用户也能够轻松开发属于自己的各类社交平台机器人应用。

例如，RainyBot为开发过程中常见的，诸如上下文的连续交互，命令/事件/关键词的注册，消息的构建等操作均提供了大量高度封装且人性化的API接口，可以通过极少的代码来实现复杂的功能。

并且，得益于[Godot Engine](https://godotengine.org/)强大的图形渲染能力，RainyBot拥有显著优于其他Bot的静态/动态图像生成功能；通过Godot引擎简单易用的编辑器，与RainyBot精心设计的极简图像生成相关API，您可以在几分钟内以极低的难度完成图像生成相关功能的开发。

RainyBot精心设计了一系列的便于使用的抽象API，并在底层将各类API调用关联到各个适配器并与对应的社交平台进行交互。目前，RainyBot通过WebSocket协议实现了基于[Mirai Api Http](https://github.com/project-mirai/mirai-api-http)的适配器，后者是[Mirai QQ](https://github.com/mamoe/mirai)的一个插件，允许开发者通过Http/Websocket等协议与[Mirai QQ](https://github.com/mamoe/mirai)进行交互，从而实现QQ平台机器人的相关功能。

对于各类性能关键的任务，RainyBot在内部均使用 [await异步](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript\_basics.html#awaiting-for-signals)及多线程来保障高负载状态下的并发及消息吞吐量。并且， RainyBot的所有需要异步执行的API均灵活使用了[await](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript\_basics.html#awaiting-for-signals)相关特性进行封装，从而实现单行代码即可进行异步任务的请求及结果获取

### 功能特色

* 模块化设计，大部分API可独立于协议后端存在，通过不同适配器实现即可对接不同协议，实现一次编写多处运行 (当前支持[Mirai-Api-Http](https://github.com/project-mirai/mirai-api-http)协议后端)
* 简单易懂的配置与管理，一次配置完成后自动管理各个协议后端的配置/运行/连接，无需每次手动启动或进行设置
* 简单，完善，易用且智能的API，可通过极少代码实现复杂功能，且可自动根据传入内容的类型决定与机器人的交互行为；同时内置大量诸如上下文交互，关键词触发，事件阻塞一类的便捷功能
* 极易上手且极其强大的图像生成功能，可以通过内置场景编辑器可视化创建从简单的2D到复杂的3D的图像场景，并使用简单易用的API将插件与场景进行交互并生成静态/动态图像
* 灵活的插件管理机制，支持插件间交互/热重载/热编辑/依赖设定等功能，同时内置功能较为全面的插件编辑器，可便捷地即时开发与修改插件
* 人性化GUI控制台界面，全中文调试信息输出，并且可以轻松实现插件与GUI的交互（如自定义GUI界面，自定义控制台命令等)
* 开箱即用的各类辅助功能接口，无需操作文件读写，即可便捷初始化并管理插件配置，插件数据，事件/命令注册等
* 活跃的功能开发与问题修复，且将以社区为驱动，广泛采纳各类建议与需求，共同打造属于所有人的RainyBot

### 工作原理

在RainyBot的幕后，还有"适配器"与"协议后端"这两个重要的模块。

协议后端将负责与目标平台的直接通信，通常为一个第三方库(在当前版本中为[Mirai QQ](https://github.com/mamoe/mirai))。协议后端接收到消息或事件后，将会将其直接或间接发送到RainyBot中与之连接的对应适配器，例如当前版本中，[Mirai QQ](https://github.com/mamoe/mirai)将通过[Mirai API HTTP](https://github.com/project-mirai/mirai-api-http)插件与RainyBot Mirai适配器进行Websocket通信。

收到数据后，适配器将会把协议后端传入的数据转换及包装为符合RainyBot API规范的事件及消息等实例，并根据注册事件时提供的条件来对各个插件进行处理(关键词匹配，上下文匹配，优先级传递，事件通知及阻塞等)。

而对于API的各类调用，原理也大致相同。适配器将会把每次API调用解析处理后，根据需要来转换为协议后端可以理解的数据格式，并发送至协议后端来与对应平台进行交互。

除通信以外，适配器还承担了协议后端的配置处理与启动相关的任务。例如，在当前版本中，RainyBot Mirai适配器将会在每次启动时检测是否存在已启动的Mirai实例，并尝试进行连接。若无法建立连接，适配器将基于对应的简易配置文件自动生成并设置[Mirai QQ](https://github.com/mamoe/mirai)与[Mirai API Http](https://github.com/project-mirai/mirai-api-http)的相关配置，生成对应系统平台的启动脚本，检测启动依赖(Mirai QQ需要[Java 11+](https://www.oracle.com/java/technologies/downloads/))，并在所有条件成功时尝试自动启动Mirai协议后端并进行连接。

首次连接成功后，适配器的工作将暂时告一段落。接下来，RainyBot核心将开始扫描并加载各类插件。各类事件/命令/关键词的注册通常也将在此时进行。所有插件加载完毕后，RainyBot将开始监听来自协议后端的各项数据，并按如上所述的方式进行处理。

在RainyBot正常关闭时，RainyBot核心将卸载所有插件，取消注册插件对应的各类事件/命令/关键词，保存插件的数据/配置文件，并在清理所有运行过程中产生的缓存后结束进程

### 基于的项目

以下列表列出了本项目所基于的项目，使用本项目时请同时参考它们的许可信息。

* [Godot Engine](https://github.com/godotengine/godot)
* [Mirai-Api-HTTP](https://github.com/project-mirai/mirai-api-http)
* [Mirai](https://github.com/mamoe/mirai)

### 相关链接

此处提供了一些可能与本项目有关，或对您有帮助的链接

* [Godot使用文档](https://docs.godotengine.org/en/latest/)
* [GDScript语言教程](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/)
* [Godot类参考API](https://docs.godotengine.org/en/latest/classes/index.html)
* [Mirai-Api-Http文档](https://github.com/project-mirai/mirai-api-http/blob/master/docs/api/API.md)

### 联系信息

交流QQ群: 429787496

Xwdit - xwditfr@gmail.com

项目官网: [https://rainybot.dev](https://rainy.love/rainybot)

项目社区: [https://godoter.cn/t/rainybot](https://godoter.cn/t/rainybot)

项目开源地址: [https://github.com/Xwdit/RainyBot-Core](https://github.com/Xwdit/RainyBot-Core)
