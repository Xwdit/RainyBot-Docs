# 类: BotPermChangeEvent

[(返回目录)](./)

**继承自:** [GroupBotEvent](groupbotevent.md)

RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据

## 方法

* static [BotPermChangeEvent](botpermchangeevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_origin\_permission ( )**

获取变更前的群权限，可用权限请参考GroupMember中的Permission枚举

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_current\_permission ( )**

获取变更后的当前群权限，可用权限请参考GroupMember中的Permission枚举

***

* [Group](group.md) **get\_group ( )**

获取此事件所发生的群组实例

***
