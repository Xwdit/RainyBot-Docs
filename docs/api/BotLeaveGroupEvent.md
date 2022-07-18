# 类: BotLeaveGroupEvent

[(返回目录)](./)

**继承自:** [GroupBotEvent](GroupBotEvent.md)

RainyBot的Bot自身退出群组事件类，记录了Bot退出某个群组相关事件的数据

## 枚举

enum **ReasonType**

Bot退出群组的原因类型枚举

* **ACTIVE** = 0\
  Bot主动退出群组
* **KICK** = 1\
  Bot被踢出群组

***

## 方法

* static [BotLeaveGroupEvent](BotLeaveGroupEvent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) reason\_type **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [Member](Member.md) **get\_operator ( )**

获取造成此事件的成员实例，可能是Bot自身，对应群的管理员，或对应群的群主

***

* [Group](Group.md) **get\_group ( )**

获取此事件对应的群组的实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_reason\_type ( )**

获取Bot退出群组的原因的类型，可用类型请参见此类的ReasonType枚举

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_reason\_type (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) reason **)**

用于判断Bot退出群组的原因是否为指定的类型，可用类型请参见此类的ReasonType枚举

***
