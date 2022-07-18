# 类: FriendInputStatusChangeEvent

[(返回目录)](./)

**继承自:** [FriendEvent](friendevent.md)

RainyBot的好友输入状态变更事件类，记录了某次好友输入状态变更事件的相关数据

## 方法

* static [FriendInputStatusChangeEvent](friendinputstatuschangeevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **get\_input\_state ( )**

用于判断此事件对应的输入状态是开始输入还是停止输入

***

* [Member](member.md) **get\_member ( )**

获取此事件对应的好友成员实例

***
