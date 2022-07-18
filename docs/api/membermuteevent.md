# 类: MemberMuteEvent

[(返回目录)](./)

**继承自:** [GroupMemberEvent](groupmemberevent.md)

RainyBot的群成员被禁言类，其实例记录了与一次群成员被禁言事件相关的数据

## 方法

* static [MemberMuteEvent](membermuteevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](groupmember.md) **get\_member ( )**

获取此事件对应的群成员实例

***

* [GroupMember](groupmember.md) **get\_operator ( )**

获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主

***

* [Group](group.md) **get\_group ( )**

获取此事件所发生的群组实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_duration ( )**

获取被禁言的时长，以秒为单位

***
