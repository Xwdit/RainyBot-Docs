# 类: Bot

[(返回目录)](./)

**继承自:** [BotAPI](BotAPI.md)

RainyBot的Bot类，负责处理与当前使用的机器人后端账号相关的各类功能

## 方法

* static [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_id ( )**

获取当前正在使用的机器人后端账号

***

* static [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_bot\_connected ( )**

判断与机器人后端是否已建立连接

***

* static [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_sent\_message\_count ( )**

获取已通过机器人后端发送的消息的数量

***

* static [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_group\_message\_count ( )**

获取已通过机器人后端接收到的群聊消息的数量

***

* static [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_private\_message\_count ( )**

获取已通过机器人后端接收到的私聊消息的数量

***

* static [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_avatar\_url ( )**

获取机器人后端账号的头像的图像链接，通常为jpg格式

***

* static [MemberList](MemberList.md) **get\_friend\_list (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

获取当前机器人账号的好友列表，需要与await关键词配合使用

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* static [GroupList](GroupList.md) **get\_group\_list (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

获取当前机器人账号的群组列表，需要与await关键词配合使用

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* static [MemberProfile](MemberProfile.md) **get\_profile (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

获取当前机器人账号的资料卡，需要与await关键词配合使用

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* static [CacheMessage](CacheMessage.md) **get\_cache\_message (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) msg\_id, [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

从当前机器人账号的历史消息缓存中获取指定id的缓存消息，需要与await关键词配合使用

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***
