# 类: Member

[(返回目录)](./)

**继承自:** [MemberAPI](MemberAPI.md)

RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能

## 描述

这是RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能\
绝大部分与好友/单向好友(陌生人)直接相关的操作都可以通过此类来进行

## 枚举

enum **Role**

这是代表了个体成员类型的枚举，在进行类型判断相关操作时可在转为整数后用于对比

如"get\_role() == Member.Role.FRIEND"可判断个体成员是否为好友

* **FRIEND** = 0\
  代表个体成员的类型为好友
* **STRANGER** = 1\
  代表个体成员的类型为单向好友(陌生人)

***

## 方法

* static [Member](Member.md) **init (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) member\_id, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) role=0 **)**

手动构造一个Member类的实例，用于主动进行与个体成员的交互时使用

需要传入的参数分别为个体成员的ID，个体成员的类型(可选，默认为Member.Role.FRIEND)

***

* static [Member](Member.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) role=0 **)**

通过机器人协议后端的元数据字典构造一个Member类的实例，仅当你知道自己在做什么时才使用

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_metadata ( )**

获取实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_role ( )**

获取个体成员实例的类型，将返回一个对应Role枚举的整数值

若为手动构造的实例，将始终返回0

***

* void **set\_role (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) role **)**

设置个体成员实例的类型

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_role (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) role **)**

判断个体成员实例是否为某类型

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_id ( )**

获取个体成员实例的ID

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_name ( )**

获取个体成员实例的名称(昵称)，若为手动构造的实例，将始终返回空字符串

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_remark ( )**

获取Bot对个体成员实例的备注，若为手动构造的实例，将始终返回空字符串

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_avatar\_url ( )**

获取个体成员实例对应账号的头像的图像链接，通常为jpg格式

***

* [MemberProfile](MemberProfile.md) **get\_profile (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

获取个体成员实例相关资料的MemberProfile实例，需要配合await关键字使用

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* [BotRequestResult](BotRequestResult.md) **send\_message (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) msg, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) quote\_msgid=-1, [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

向个体成员实例发送消息，同时可指定一个需要引用回复的消息ID

配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态

传入的第一个参数可以是以下类型:

* 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送)
* 单个消息实例(将其作为消息链中的唯一消息实例发送)
* 消息链实例(将其内容复制并发送)
* 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送)

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* [BotRequestResult](BotRequestResult.md) **send\_nudge (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

向个体成员实例发送一个戳一戳消息

配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***

* [BotRequestResult](BotRequestResult.md) **delete\_friend (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

解除与个体成员实例的好友/单向好友关系

配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***
