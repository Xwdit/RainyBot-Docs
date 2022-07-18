# 类: ForwardMessage

[(返回目录)](./)

**继承自:** [Message](Message.md)

RainyBot的转发消息类，其实例记录了与一个转发消息相关的各类数据

## 方法

* static [ForwardMessage](ForwardMessage.md) **init (** [ForwardMessageNodeList](ForwardMessageNodeList.md) node\_list **)**

基于指定的转发消息列表实例来手动构造一个ForwardMessage实例

***

* static [ForwardMessage](ForwardMessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [ForwardMessageNodeList](ForwardMessageNodeList.md) **get\_node\_list ( )**

获取此实例对应的转发消息列表实例

***

* void **set\_node\_list (** [ForwardMessageNodeList](ForwardMessageNodeList.md) node\_list **)**

设置此实例对应的转发消息列表实例

***
