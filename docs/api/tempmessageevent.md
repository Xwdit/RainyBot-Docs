# 类: TempMessageEvent

[(返回目录)](./)

**继承自:** [MessageEvent](messageevent.md)

RainyBot的群临时消息事件类，其实例记录了与一次群临时消息事件相关的数据

## 方法

* static [TempMessageEvent](tempmessageevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](groupmember.md) **get\_sender ( )**

获取消息事件对应的发送者的群组成员实例

***

* [Group](group.md) **get\_group ( )**

获取消息事件所对应的来源群组的实例

***
