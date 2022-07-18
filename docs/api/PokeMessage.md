# 类: PokeMessage

[(返回目录)](./)

**继承自:** [Message](Message.md)

RainyBot的戳一戳消息类，其实例记录了与一个戳一戳消息相关的各类数据

## 枚举

enum **PokeType**

戳一戳消息的类型

* **POKE** = 0\
  戳一戳
* **SHOW\_LOVE** = 1\
  比心
* **LIKE** = 2\
  点赞
* **HEART\_BROKEN** = 3\
  心碎
* **SIX\_SIX\_SIX** = 4\
  六六六
* **FANG\_DA\_ZHAO** = 5\
  放大招

***

## 方法

* static [PokeMessage](PokeMessage.md) **init (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) type **)**

基于指定的戳一戳类型来手动构造一个PokeMessage类的实例

***

* static [PokeMessage](PokeMessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_poke\_type ( )**

获取此实例对应的戳一戳类型

***

* void **set\_poke\_type (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) type **)**

设置此实例对应的戳一戳类型

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_poke\_type (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) type **)**

判断此实例是否为指定的戳一戳类型

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
