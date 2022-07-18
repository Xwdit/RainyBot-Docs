# 类: GroupAnnounceInfoList

[(返回目录)](./)

**继承自:** [GroupAPI](groupapi.md)

RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表

## 描述

这是RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表\
你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有公告信息(将返回\[GroupAnnounceInfo]类实例)

## 方法

* static [GroupAnnounceInfoList](groupannounceinfolist.md) **init\_meta (** [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) arr **)**

通过机器人协议后端的元数据数组构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) **get\_metadata ( )**

获取实例中的元数据数组，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) arr **)**

使用指定字典覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用

***

* [GroupAnnounceInfo](groupannounceinfo.md) **get\_from\_index (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) index **)**

根据指定的序号来从群公告信息列表实例中获取对应的\[GroupAnnounceInfo]实例

若序号不存在则返回null

***

* [GroupAnnounceInfo](groupannounceinfo.md) **get\_from\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) announce\_id **)**

根据指定的群公告ID来从群公告信息列表实例中获取对应的\[GroupAnnounceInfo]实例

若群公告ID不存在则返回null

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **has\_announce (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) announce\_id **)**

判断群公告信息列表实例中是否存在指定ID的群公告信息实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_size ( )**

获取群公告信息列表实例中的群公告信息实例的总数

***
