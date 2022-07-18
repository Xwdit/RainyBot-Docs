# 类: GroupMessageEvent

[(返回目录)](./)

**继承自:** [MessageEvent](messageevent.md)

RainyBot的群组消息事件类，其实例记录了与一次群组消息事件相关的数据

## 方法

* static [GroupMessageEvent](groupmessageevent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [GroupMember](groupmember.md) **get\_sender ( )**

获取消息事件对应的发送者的群组成员实例

***

* [Group](group.md) **get\_group ( )**

获取消息事件所对应的群组的实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_group\_id ( )**

获取消息事件所对应的群组的ID

***

* [BotRequestResult](botrequestresult.md) **recall ( )**

撤回事件所对应的群消息，机器人需要在对应群组中为管理员或群组权限才能执行成功

***

* [BotRequestResult](botrequestresult.md) **set\_essence ( )**

将事件所对应的群消息设置为精华消息，机器人需要在对应群组中为管理员或群组权限才能执行成功

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_at\_bot ( )**

判断事件所对应的群消息中是否AT了机器人

***
