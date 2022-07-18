# 类: GroupConfig

[(返回目录)](./)

**继承自:** [GroupAPI](groupapi.md)

RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息

## 描述

这是RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息\
对此类实例中内容的更改不会直接影响群组的配置，需要在更改完成后于群组实例中将此类实例设定为群组配置

## 方法

* static [GroupConfig](groupconfig.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个GroupConfig类的实例，仅当你知道自己在做什么时才使用

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_metadata ( )**

获取实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_name ( )**

获取群组配置实例中储存的群名称

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_announcement ( )**

获取群组配置实例中储存的入群公告

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **get\_confess\_talk ( )**

获取群组配置实例中储存的坦白说启用状态

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **get\_allow\_member\_invite ( )**

获取群组配置实例中储存的允许邀请入群启用状态

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **get\_auto\_approve ( )**

获取群组配置实例中储存的自动入群审批启用状态

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **get\_anonymous\_chat ( )**

获取群组配置实例中储存的匿名聊天启用状态

***

* void **set\_name (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) name **)**

更改群组配置实例中储存的群名称

***

* void **set\_announcement (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

更改群组配置实例中储存的入群公告

***

* void **set\_confess\_talk (** [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) enabled **)**

更改群组配置实例中储存的坦白说启用状态

***

* void **set\_allow\_member\_invite (** [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) enabled **)**

更改群组配置实例中储存的允许邀请入群启用状态

***

* void **set\_auto\_approve (** [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) enabled **)**

更改群组配置实例中储存的自动入群审批启用状态

***

* void **set\_anonymous\_chat (** [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) enabled **)**

更改群组配置实例中储存的匿名聊天启用状态

***
