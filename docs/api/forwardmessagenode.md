# 类: ForwardMessageNode

[(返回目录)](./)

**继承自:** [MessageAPI](messageapi.md)

这是RainyBot的单条转发消息类，其实例储存了一系列合并转发消息中的单条消息的相关数据

## 方法

* static [ForwardMessageNode](forwardmessagenode.md) **init (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) message\_id, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) sender\_id=-1, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) time=0, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) sender\_name="", [MessageChain](messagechain.md) message\_chain=null **)**

基于指定的参数来手动构造一个ForwardMessageNode类的实例

需要的参数从左到右分别为: 被转发的消息ID，被转发的消息的发送者ID,被转发的消息的发送时间戳，被转发的消息的发送者名称，被转发的消息的消息链

***

* static [ForwardMessageNode](forwardmessagenode.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_metadata ( )**

获取实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_sender\_id ( )**

获取此实例对应的消息的发送者的ID

***

* void **set\_sender\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) id **)**

设置此实例对应的消息的发送者的ID

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_timestamp ( )**

获取此实例对应的消息的发送时间戳

***

* void **set\_timestamp (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) time **)**

设置此实例对应的消息的发送时间戳

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_sender\_name ( )**

获取此实例对应的消息的发送者的名称

***

* void **set\_sender\_name (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) name **)**

设置此实例对应的消息的发送者的名称

***

* [MessageChain](messagechain.md) **get\_message\_chain ( )**

获取此实例对应的消息的消息链实例

***

* void **set\_message\_chain (** [MessageChain](messagechain.md) msg\_chain **)**

设置此实例对应的消息的消息链实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_message\_id ( )**

获取此实例对应的消息的ID

***

* void **set\_message\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) id **)**

设置此实例对应的消息的ID

***
