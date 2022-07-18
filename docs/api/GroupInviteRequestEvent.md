# 类: GroupInviteRequestEvent

[(返回目录)](./)

**继承自:** [RequestEvent](RequestEvent.md)

RainyBot的邀请入群请求事件类，其实例记录了与一次邀请入群请求事件相关的数据

## 枚举

enum **RespondType**

可用于回应请求的回应类型

* **ACCEPT** = 0\
  接受入群邀请
* **REFUSE** = 1\
  拒绝入群邀请

***

## 方法

* static [GroupInviteRequestEvent](GroupInviteRequestEvent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_group\_name ( )**

获取事件对应的被邀请加入的群的名称

***
