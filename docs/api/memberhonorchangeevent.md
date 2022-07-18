# 类: MemberHonorChangeEvent

[(返回目录)](./)

**继承自:** [GroupMemberEvent](groupmemberevent.md)

RainyBot的群成员荣誉变更类，其实例记录了与一次群成员荣誉变更事件相关的数据

## 枚举

enum **ActionType**

群荣誉更改的操作类型

* **ACHIEVE** = 0\
  群成员获得了新的群荣誉
* **LOST** = 1\
  群成员失去了一个群荣誉

***

## 方法

* static [MemberHonorChangeEvent](memberhonorchangeevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](groupmember.md) **get\_member ( )**

获取此事件对应的群成员实例

***

* [Group](group.md) **get\_group ( )**

获取此事件所发生的群组实例

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_honor\_name ( )**

获取被变更的群荣誉的名称

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_action\_type ( )**

获取本次事件的变更类型，详见上方的ActionType枚举

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_action\_type (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) action **)**

用于判断本次事件是否为指定的变更类型

***
