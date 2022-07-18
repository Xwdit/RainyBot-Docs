# 类: FriendRecallEvent

[(返回目录)](./)

**继承自:** [FriendEvent](friendevent.md)

RainyBot的好友消息撤回事件类，记录了某次好友消息撤回事件的相关数据

## 方法

* static [FriendRecallEvent](friendrecallevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_sender\_id ( )**

获取事件原消息发送者的ID

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_message\_id ( )**

获取事件对应的原消息的ID

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_message\_time ( )**

获取事件对应的原消息的发送时间

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_operator\_id ( )**

获取造成此事件的成员的ID(通常为此事件对应的好友的ID或Bot自身的ID)

***
