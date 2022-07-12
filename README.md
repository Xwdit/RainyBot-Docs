# 概览

RainyBot是一个跨平台的机器人开发框架，基于 Godot Engine 4.0 进行开发。 本项目成立的目的，是为了建立一个低门槛，简单易用的机器人开发框架。 通过提供大量精心设计，智能且极简的交互API与预置功能，结合GDScript脚本语言的简便语法， 来尽可能地提升开发效率且降低开发难度，且让更多开发经验不足，乃至无经验的用户也能够轻松开发属于自己的各类社交平台机器人应用。例如，RainyBot为开发过程中常见的，诸如上下文的连续交互，命令/事件/关键词的注册，消息的构建等操作均提供了大量高度封装且人性化的API接口，可以通过极少的代码来实现复杂的功能。

并且，得益于Godot Engine强大的图形渲染能力，RainyBot拥有显著优于其他Bot的静态/动态图像生成功能；通过Godot引擎简单易用的编辑器，与RainyBot精心设计的极简图像生成相关API，您可以在几分钟内以极低的难度完成图像生成相关功能的开发。

RainyBot精心设计了一系列的便于使用的抽象API，并在底层将各类API调用关联到各个适配器并与对应的社交平台进行交互。目前，RainyBot通过WebSocket协议实现了基于Mirai Api Http的适配器，后者是Mirai QQ的一个插件，允许开发者通过Http/Websocket等协议与Mirai QQ进行交互，从而实现QQ平台机器人的相关功能。

对于各类性能关键的任务，RainyBot在内部均使用 await异步及多线程来保障高负载状态下的并发及消息吞吐量。并且， RainyBot的所有需要异步执行的API均灵活使用了await相关特性进行封装，从而实现单行代码即可进行异步任务的请求及结果获取



### RainyBot-API

本储存库为RainyBot机器人框架的API开发文档，记录了各类可用于插件开发中的交互接口\
[(点此直达API文档目录)](api/)

### 开始使用

您可以直接在此储存库页面中查阅您所需要的信息。您还可以将此储存库克隆到本地，并放置于Godot Engine 4的新建项目目录中，以便直接在其中进行开发，并在开发过程中使用更智能的的错误检查与自动补全等功能。

([返回顶部](./#top))

### 插件示例

本储存库中随附了一些插件示例与插件模板，您可以在`examples`目录与`templates`目录中找到它们

([返回顶部](./#top))

### API路线图

* [x] 完成API的分类与清理
* [x] 整理并将储存库开源
* [ ] 为每项API条目添加注释与文档
* [ ] 添加更多示例插件
* [ ] 为不同API条目增加示例文档

对于更详细的计划，已知问题或功能建议，请访问储存库的 [Issues](https://github.com/Xwdit/RainyBot-API/issues) 页面

([返回顶部](./#top))

### 贡献指南

我们非常感谢您有兴趣为本项目贡献源码来让它变得更好。对于代码贡献的流程，我们建议您遵循以下贡献指南：

1. 在您的储存库中Fork本项目
2. 创建一个您准备开发的功能或修复的问题的分支 (`git checkout -b feature/AmazingFeature`)
3. 提交您的更改 (`git commit -m '添加一些功能'`)
4. 将更改上传到您的储存库 (`git push origin feature/AmazingFeature`)
5. 在本项目储存库中打开一个此分支的Pull Request，来让我们看到并对其进行审阅

([返回顶部](./#top))

### 项目许可

项目基于AGPL-3.0许可进行开源，具体内容请参见LICENSE文件

([返回顶部](./#top))

### 联系信息

交流QQ群: 429787496

Xwdit - xwditfr@gmail.com

项目地址: [https://github.com/Xwdit/RainyBot-Core](https://github.com/Xwdit/RainyBot-Core)

([返回顶部](./#top))

### 更多信息

此处提供了一些可能与本项目有关，或对您有帮助的信息

* [Godot使用文档](https://docs.godotengine.org/en/latest/)
* [GDScript语言教程](https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/)
* [Godot类参考API](https://docs.godotengine.org/en/latest/classes/index.html)
* [Mirai-Api-Http文档](https://github.com/project-mirai/mirai-api-http/blob/master/docs/api/API.md)

([返回顶部](./#top))
