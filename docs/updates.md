---
description: 了解一下各个版本的变化吧~
---

# 🚀 更新日志

### [v2.1.4-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.1.4-stable)

* 重新设计了界面主题与布局，带来了更加现代化与简约的观感
* 修复了插件编辑器的保存/注释快捷键
* 改进了主菜单及部分界面模块中的外部链接布局
* 提升了RainyBot中多个组件的稳定性，修复了各类细节问题

### [v2.1.3-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.1.3-stable)

* 适配最新的Mirai相关组件，修复闪图发送问题
* 所基于的Godot版本更新至v4.0-beta1
* 所基于的Mirai版本更新至2.12.3, 所基于的Mirai-API-HTTP版本更新至2.6.2
* 提升了RainyBot中多个组件的稳定性，修复了各类细节问题

### [v2.1.2-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.1.2-Stable) (仅热更新，无发行包)

* 支持异步执行热更新请求，大幅提升热更新下载速度

### [v2.1.1-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.1.1-Stable) (仅热更新，无发行包)

* 紧急修复图像消息无效，无法发送图像的问题

### [v2.1-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.1-stable)&#x20;

#### (此版本引入了兼容性变更，请点击链接来检查GitHub中的详细更新日志)

* 新增热更新与热修复的下载源切换功能，GitHub为默认下载源，但可切换至Gitee国内源
* 机器人自身退群事件`BotLeaveGroupEvent`中新增因群解散而退群的事件类型
* `ImageMessage`类及`FlashImageMessage`类中新增获取接收的图像的文件大小，图像宽高，图像类型，以及图像是否为Emoji的方法
* `Member`类中新增获取指定时间段的漫游消息的方法
* 新增RainyBot控制台配置文件
* 修复插件列表更新时插件管理器GUI不更新的问题
* 修复插件管理器还原插件配置相关的问题
* 提升热更新与热修复功能的稳定性，修正因文件行尾不同导致判断失败的问题，修复更新与修复的进度显示
* 更新过时的API链接以及内置编辑器所需的类文档
* 所基于的Godot版本更新至v4.0-alpha14
* 所基于的Mirai版本更新至2.13.0-M1, 所基于的Mirai-API-HTTP版本更新至2.6.1
* 提升了RainyBot中多个组件的稳定性，修复了各类细节问题

### [v2.0-Stable](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-stable)

* 新增自动增量热更新功能，可自动对比新版本与当前版本的文件差异，并自动下载及热更新差异部分
* 新增组件自修复功能，可在RainyBot程序组件出错或受损时自动查错并还原回初始状态
* Console类中新增了临时关闭系统消息输出的API，可用于避免短时间的大量消息占据过多的控制台空间(不影响由插件调用Console类输出的消息)
* 提升了RainyBot中多个组件的稳定性，修复了各类问题

### [v2.0-RC-9](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-9)

* 插件管理器中新增注册列表查询与数据功能，现在您可以快速查看插件注册的所有事件/关键词/控制台命令，还可以方便的管理插件的各项数据库项目/缓存项目/配置项目
* Plugin类中新增了将指定插件配置项与全部配置项还原回默认的API
* Console类新增可弹出提示/确认窗口并跟踪确认状态的API
* 为RainyBot中的多处操作实现了弹窗提示/弹窗确认功能
* 控制台新增通过命令来快捷管理插件数据库项目的指令，可以通过`/help plugins`指令来查看详情
* 插件编辑器新增按住Ctrl键并点击一个类名可快速打开其文档的功能
* 修复了插件编辑器可以撤销刚加载的文本的问题
* 改善Java未安装时的启动检查流程
* 忽略await相关的运行时错误检查以减少打扰
* 修正部分错误的消息发送时间戳获取函数的命名
* 将各种原RainyBot API链接更新为最新的在线文档链接
* 更新所依赖的Godot版本为4.0.alpha11
* 更新发行包的Mirai协议后端版本为2.12.0
* 其余各项细节的改进与修复，若要查看更详细的更新内容，请参阅Commits更改日志

### [v2.0-RC-8-Patch-1](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-8-patch-1)

* 紧急修复了v2.0-RC-8中因启用了多线程渲染导致窗口大小调节崩溃的问题

### [v2.0-RC-8](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-8)

* 新增了Gif动图生成与发送相关的API，可前往`RainyBot-API`中的`CoreAPI/GifImage.gd`以及`MessageAPI/Types/ImageMessage.gd`文件来查看相关文档
* 新增了从Http请求结果自动判断图像格式并获取为图像实例的API，可前往`RainyBot-API`中的`CoreAPI/HttpRequestResult.gd`文件来查看相关文档
* 将Plugin插件类中的部分函数更改为静态函数以支持在插件外进行调用 (如场景脚本中)
* 简化并类型化了大部分的内部代码以提升运行速度及可维护性，预计可带来25%左右的脚本性能提升
* 将BotEvent中的`get_qq()`函数更名为`get_id()`以统一命名规范
* 修复了Mirai启动时的系统平台判断问题，解决了RainyBot试图在Windows平台启动.sh脚本的问题
* 修复了场景图像生成后拉伸缩放异常的问题，并调整了所使用的缩放算法以取得最佳效果
* 其余各项细节的改进与修复，若要查看更详细的更新内容，请参阅Commits更改日志

### [v2.0-RC-7](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-7)

* 新增了了对MacOS/Linux(待测试)平台的支持，对应平台的发行包将在稍后于此页面中更新
* 新增了与群公告相关的各类API，可前往GroupAPI的Group类与GroupAnnounce相关类中查看详情
* 新增对商城表情消息类型的支持，目前仅支持读取与转发，暂不支持手动构造发送，可前往MessageAPI/Types/MarketFaceMessage.gd下查看相关API
* 大幅简化了场景加载与图像生成相关的API，详情请查看上方“重要兼容性变更”处所述的内容
* 支持异步并发的场景加载与图像生成，可以在每次不同的请求中异步创建独立的场景并进行独立的图像生成，即多个场景加载与图像生成可以同时进行且互不干扰
* 优化了资源重新导入的稳定性与速度，提升了对不同平台下的兼容性
* 其余各项细节的改进与修复，若要查看更详细的更新内容，请参阅Commits更改日志

### [v2.0-RC-6](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-6)

* 新增了获取`好友/单向好友/群成员/群组/机器人自身`的头像图片链接的API
* 群成员类中新增直接获取此成员的相关资料卡的API
* 成员资料类新增直接获取任意指定ID用户的资料并构造为成员资料实例的API
* 软件本体与插件新增配置文件更新功能，可以自动添加缺失的配置项与移除多余的配置项
* 协议后端配置文件中新增用于配置`单次请求获取结果的最大超时秒数`的配置项
* 需要向协议后端发送请求的每个API函数中均在最后增加了可选的`最大超时秒数`参数项，可为每次的不同的请求分别配置超时时间
* 内部代码进行了大量调整以提升稳定性并尽可能地避免出现运行时错误
* 新增了对通过Godot编辑器运行RainyBot时的判定检查，以避免执行部分可能导致编辑器提示错误并冻结RainyBot的代码逻辑
* 进行了对各项内容的细节改进与问题修复
* 若要查看更详细的更新内容，请参阅Commits更改日志。

### [v2.0-RC-5](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-5)

* 新增了异步加载资源与场景的API，现可通过Utils类中的`load_threaded()`函数来异步加载各类资源，还可通过设置插件API中的`load_scene()`函数的第三个参数来进行异步场景加载
* 新增了将Http请求结果按照指定图像格式`(png,bmp,jpg,tga,webp)`解析并获取为图像实例的API
* 新增了将Http请求结果保存至指定路径的文件的API
* 将渲染后端默认更改为桌面平台版本以支持更高级的图像渲染效果（如高斯模糊）
* 若要查看更详细的更新内容，请参阅Commits更改日志。

### [v2.0-RC-4](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-4)

* 软件结构大幅改进，将Godot的编辑器版本作为运行时，直接在RainyBot工程目录中运行。这意味着您无需另行下载或启动Godot编辑器，即可随时编辑与实时调试RainyBot插件乃至软件本身的场景及脚本 (在主菜单中点击`场景编辑器`选项即可)；并且，此项改进还为后续如自动化增量更新，代码自修改等功能打下了良好的基础\~
* 新增了一键重新导入所有资源的功能，这意味着您现在不需要以特殊方法加载或处理插件场景中所使用的资源，而是直接按照常规Godot场景的编辑方式进行编辑即可。将制作好的插件及其场景放置在RainyBot对应目录后，只需点击插件菜单中的`重新导入所有资源`选项，即可自动对RainyBot目录下的所有场景及资源进行处理以保证其正常运行
* 为各项SubViewport相关的API新增了错误检测与提示
* 新增了资源重新导入的控制台命令，补全了缺失的重新启动命令
* 改进了版本更新的检测流程，提高了版本检测的稳定性
* 改进了Mirai协议后端的启动流程，提高了启动过程中的稳定性
* 其余各项细节改进与问题修复
* 若要查看更详细的更新内容，请参阅Commits更改日志。

### [v2.0-RC-3](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-3)

* 新增了全新的运行时脚本错误检测功能及相关的插件API，若插件脚本或RainyBot内部脚本在运行时出现错误，您将可以第一时间通过控制台获得反馈，并可以通过插件进行错误处理（如发送通知到指定好友等）
* 主菜单新增快捷重新启动RainyBot的选项，对于部分无法热重载的内容（如场景附加的脚本），您可以通过此功能来便捷的对RainyBot进行快速重启
* 代码内容清理，各类细节改进与修复

### [v2.0-RC-2](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-2)

* 修复设置SubViewport背景透明导致渲染异常的问题
* 修复设置SubViewport拉伸大小无效的问题
* 修复插件管理器启动时不刷新插件列表的问题
* 主字体更换为等宽字体，大幅提升内置编辑器的使用体验
* 改进插件模板的格式
* 从完整发行包中移除了示例插件，您可以根据需要在这里找到它们: [https://github.com/Xwdit/RainyBot-API/tree/main/examples](https://github.com/Xwdit/RainyBot-API/tree/main/examples)
* 其余各类细节改进与修复

### [v2.0-RC-1](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-rc-1)

* 支持在通过插件创建SubViewport时设置其背景透明的状态
* 新增在运行时设置指定SubViewport的背景透明状态的API
* 默认禁用通过插件创建的SubViewport的背景透明状态

### [v2.0-beta-9](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-9)

* Bot类中新增获取连接状态，以及获取私聊消息/群聊消息/已发送消息数量统计的API
* 插件类中新增缓存数据库API，可储存需要在插件卸载或重载时保留，但同时将在RainyBot关闭时自动清理的数据
* 插件类中新增获取全局运行时间的API
* 窗口标题栏新增各项状态信息显示
* 主菜单栏新增打开内部日志目录的快捷选项
* 新增在创建SubViewport时调整拉伸大小的支持
* 现支持通过创建的SubViewport来生成透明背景的图像(且默认情况下为透明背景)
* 初步支持对插件关联场景的热重载，但关联场景中的脚本目前仍需通过重启RainyBot来进行重载
* 各类细节改善与错误修复

### [v2.0-beta-8](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-8)

* 插件类中新增了快捷加载场景，创建SubViewport，更改SubViewport大小，更新SubViewport内容，基于SubViewport获取图像等函数
* 修复了插件编辑器错误行不能正确清除的问题

### [v2.0-beta-7](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-7)

* 底层架构大幅调整，现在可以通过Godot编辑器配合RainyBot-API来可视化制作场景，并由插件调用来生成图片/自定义GUI等
* 新增基于图像实例进行缓存，并构建为图片/闪图消息类实例用于发送的功能

### [v2.0-beta-6](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-6)

* 此版本开始将插件设置的ID强制转换为小写，以避免因大小写差异导致的各类问题
* 基于的 Godot版本更新至Godot-4.0.alpha10

### [v2.0-beta-5](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-5)

* 完善了主界面的各类菜单，增加了在线社区，在线教程，插件中心，在线问答等网页的快捷入口
* 新增版本检查功能，现在会在每次启动软件时检查当前是否为最新版本
* 新增了对增量更新的支持

### [v2.0-beta-4](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-4)

* 新增全新的图形化插件管理器，可通过 插件菜单->插件管理器 进行使用，也可通过命令 plugins manager 进行使用
* 修复部分已知问题，改善使用体验

### [v2.0-beta-3](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-3)

* 完善部分细节，修复一些影响使用体验的问题
* Release包中的Mirai后端版本更新至2.11.1
* Release包中的Mirai-Api-Http插件版本更新至2.5.2
* 基于的Godot版本更新至 4.0 Commit \[[706dc74e01](https://github.com/godotengine/godot/commit/706dc74e01e1900af947d7a5fe854603a3df18b1)]

### [v2.0-beta-2](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-2)

* 新增检查是否存在配置项/数据库项的函数
* 实现基本的菜单框架，并且实现了部分菜单功能
* 修复文本输入光标问题，调整为常规样式
* 补全与更新内置的类文档，使自动补全更为全面
* 插件编辑器现支持多窗口，可同时编辑多个插件文件
* 插件编辑器部分细节功能完善，支持批量切换选择内容的注释
* 内置简体中文语言文件，文本编辑框右键菜单中现以中文语言显示
* 完善部分细节，修复一些影响使用体验的问题
* Release包中的Mirai后端版本更新至2.9.2
* 基于的Godot版本更新至 4.0 Commit \[2f4d76f068]

### [v2.0-beta-1](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-beta-1)

* 内置插件编辑器实现了基于简易语法解析的自动补全与错误检查，现在插件开发更加便捷与高效了\~
* 改进上下文相关功能，现在可指定消息事件上下文仅匹配群号/仅匹配发送者了
* 控制台日志新增日期显示，解决了时间日期混淆的问题
* 插件数据库新增支持删除数据库条目/清空数据库，优化数据库与插件配置部分功能的行为
* 对界面布局进行部分优化，观感更自然更美观
* 优化插件编辑器加载机制，减少内存占用，解决光标消失的问题
* 代码结构优化，解耦GUI与核心部分，同时对字体依赖进行了清理
* Release包中的Mirai后端版本更新至2.9.0-RC
* 基于的Godot版本更新至 4.0 Commit \[8485d0c53a]

### [v2.0-alpha-6](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-6)

* 紧急修复了一处因多线程渲染导致软件窗口崩溃的关键问题

### [v2.0-alpha-5](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-5)

* 关键词注册移除了无用的过滤器函数及过滤失败文本参数，同时关键词所绑定函数现需要额外接收一个包含解析后关键词的参数
* 关键词新增支持设置多种匹配模式，支持根据变量字典或特殊占位符进行动态匹配，支持设定是否在匹配成功后返回true用于阻塞
* 事件注册支持同时注册多个函数，并且可自定义事件阻塞的行为模式
* 上下文系统新增支持按照特定消息事件/发送者/群来进行上下文相关处理，新增设定是否在检测到相关上下文后返回true用于阻塞
* 重写Http请求相关功能，新增HttpRequestResult类用于获取不同类型的请求结果及请求状态
* 新增可获取配置目录/文件路径，数据目录/文件路径，插件目录/文件路径的函数
* 新增可判断插件是否成功加载配置/数据的函数
* 插件编辑器新增仅保存按钮，且默认行为更改为仅保存，可通过Ctrl+Alt+S进行重载保存
* 临时消息事件支持直接获取群号码
* 对API进行改进与清理，对默认插件模板内容进行改进
* 修复消息链的获取消息文本/数组函数
* 临时修复AtMessage获取显示文本
* 修复At时匹配关键词可能有多余的空格的问题
* 修复一处可能导致运行崩溃的消息解析问题
* 优化关键词匹配机制，提升运行速度
* 基于的Godot版本更新至 4.0 Commit \[092a286127]

### [v2.0-alpha-4](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-4)

* 插件类新增将在与机器人后端断开连接/恢复连接时触发的虚函数
* 新增注册控制台命令时，可设定执行此命令是否需要已与协议后端建立连接
* 现在每次启动RainyBot时会自动重命名之前未重命名的日志文件，以防止对其进行覆盖
* 现在内置的插件管理相关命令无需与协议后端建立连接即可使用
* 修复HTTP请求/后端命令请求超时判定无效的问题；改进超时判定的行为，时间为0则不进行超时计算

### [v2.0-alpha-3](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-3)

* 修复因插件编辑器没有被重置导致内存被持续占用的问题
* 修复对SessionId的错误用法，解决了可能导致无法重连的问题
* Release包中的Mirai-Api-Http版本更新至2.4.0

### [v2.0-alpha-2](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-2)

* 修复日志文件储存异常的问题，日志文件现在将随控制台显示同步更新
* 修复可能导致性能降低与内存泄露的问题
* 改进命令输入框的行为与体验
* 改进部分控制台文本显示

### [v2.0-alpha-1](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-alpha-1)

* 大量简化了角色消息发送/消息事件回复/消息链构造/消息链添加等API函数，且简化了部分消息类型的构造函数；现在这些函数可智能判断向函数中传入的类型来决定其行为，例如传入字符串可自动构造为文本消息类实例等。且所有消息事件的回复函数均得到统一，从此无需区分消息事件的类型即可直接回复
* 新增关键词相关功能，可注册一个关键词并指定关键词将触发的函数，且可指定每个关键词的权限检查函数；随后即可在任意消息事件中通过传入事件实例来自动判断关键词触发
* 新增上下文关联功能，可让插件在某函数执行过程中阻塞来等待一个上下文的回应，随后可由其它函数传入其所需的内容来继续进行处理，且可指定上下文超时的时间
* 重写插件事件机制，支持设定同事件中的不同插件的传递优先级，并且可通过在事件触发的函数中返回一个true来阻断事件向下传递。
* 重写插件加载机制，支持插件间依赖设定，开发插件时可指定插件所需的依赖插件，以确保依赖项能够在其之前被RainyBot加载
* 简化了从消息链中获取消息数组/消息文本的流程，现在直接传入消息的类名(无需双引号)，或包含多个消息类名的数组即可
* 简化了插件事件注册的流程，现在通过直接传入事件的类名即可进行注册(无需双引号)，无需再传入事件的分类与具体类型
* 事件，关键词与命令注册所需的函数名的双引号现在可选，可与事件注册的类名一样无需双引号；但若要绑定到插件基类的内置函数，则仍需双引号(如"trigger\_keyword")
* API中新增大量用于简化操作的新函数，例如可直接通过event.get\_sender\_id()来获取消息发送者的ID，而无需先获取消息链再获取ID
* 插件中新增所有插件加载完毕时触发的虚函数，可用于保证在所有插件均被加载后执行某操作
* 优化界面布局，让控制台文本布局对阅读更友好。同时命令输入框现已通过临时方案来支持显示输入光标
* Mirai-Adapter配置文件中新增对设备协议修改的支持（需要重置配置文件)
* 新增控制台日志功能，现在在RainyBot正常关闭时将会储存控制台日志到/logs目录下
* 改善与Mirai后端的通信机制，现在连接时将会自动携带SessionKey，且现在断线重连后不会再重载插件了
* Release包中的Mirai后端版本更新至2.9.0-M1，Mirai-Api-Http版本更新至2.3.3
* 基于的Godot版本更新至 4.0 Commit \[97034939f]

### [v2.0-pre-alpha-5](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-pre-alpha-5)

* 修复无法使用Ctrl+S保存的问题
* 优化代码编辑器缩进效果

### [v2.0-pre-alpha-4](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-pre-alpha-4)

* 对列表类API新增自定义迭代器，完善部分API
* 补全转发消息列表的返回类型
* 修正代码编辑器滚动位置
* 修复插件管理器大小写比对问题，修复插件编辑器确认退出弹窗的显示

### [v2.0-pre-alpha-3](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-pre-alpha-3)

* 完成了用户界面的重新设计，整体观感更加舒适与美观。
* 完善了各类控制台显示内容的细节，修复了一些影响稳定性的因素
* 新增了回复时快捷AT/快捷检测机器人是否被AT的API
* 修复了部分界面显示错位的问题
* 版本号更新为v2.0-pre-alpha-3

### [v2.0-pre-alpha-2](https://github.com/Xwdit/RainyBot-Core/releases/tag/v2.0-pre-alpha-2)

* 这是RainyBot开源后公开发布的第一个版本
