# 类: GroupList

[(返回目录)](./)

**继承自:** [GroupAPI](GroupAPI.md)

RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表

## 描述

这是RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表\
你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有群组(将返回Group类实例)

## 方法

* static [GroupList](GroupList.md) **init\_meta (** [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) arr **)**

通过机器人协议后端的元数据数组构造一个GroupList类的实例，仅当你知道自己在做什么时才使用

***

* [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) **get\_metadata ( )**

获取实例中的元数据数组，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Array](https://docs.godotengine.org/en/latest/classes/class\_array.html) arr **)**

使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用

***

* [Group](Group.md) **get\_from\_index (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) index **)**

根据指定的序号来从群列表实例中获取对应的Group实例

若序号不存在则返回null

***

* [Group](Group.md) **get\_from\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) group\_id **)**

根据指定的群ID(群号)来从群列表实例中获取对应的Group实例

若群ID不存在则返回null

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_size ( )**

获取群列表实例中的群实例的总数

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **has\_group (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) group\_id **)**

判断群列表实例中是否存在指定群ID(群号)的群组实例

***
