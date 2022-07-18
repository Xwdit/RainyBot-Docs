# 类: MemberJoinEvent

[(返回目录)](./)

**继承自:** [GroupMemberEvent](groupmemberevent.md)

RainyBot的新成员入群类，其实例记录了与一次新成员入群事件相关的数据

## 方法

* static [MemberJoinEvent](memberjoinevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](groupmember.md) **get\_member ( )**

获取此事件对应的群成员实例

***

* [GroupMember](groupmember.md) **get\_invitor ( )**

获取邀请新成员入群的群成员的实例

***

* [Group](group.md) **get\_group ( )**

获取此事件所发生的群组实例

***
