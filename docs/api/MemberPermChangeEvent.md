# 类: MemberPermChangeEvent

[(返回目录)](./)

**继承自:** [GroupMemberEvent](GroupMemberEvent.md)

RainyBot的群成员权限变更类，其实例记录了与一次群成员权限变更事件相关的数据

## 方法

* static [MemberPermChangeEvent](MemberPermChangeEvent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](GroupMember.md) **get\_member ( )**

获取此事件对应的群成员实例

***

* [Group](Group.md) **get\_group ( )**

获取此事件所发生的群组实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_origin\_perm ( )**

获取变更前的群权限，可用权限请参考GroupMember中的Permission枚举

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_current\_perm ( )**

获取变更后的当前群权限，可用权限请参考GroupMember中的Permission枚举

***
