# 类: QuoteMessage

[(返回目录)](./)

**继承自:** [Message](Message.md)

RainyBot的引用回复消息类，其实例记录了与一个引用回复消息相关的各类数据

## 方法

* static [QuoteMessage](QuoteMessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_message\_id ( )**

获取被引用回复的原消息ID

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_group\_id ( )**

获取被引用回复的原消息所在的群组的ID(若不位于群组中则返回0)

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_sender\_id ( )**

获取被引用回复的原消息的发送者的ID

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_target\_id ( )**

获取被引用回复的原消息的接收者(或接收群组)的ID

***

* [MessageChain](MessageChain.md) **get\_message\_chain ( )**

获取被引用回复的原消息的消息链实例

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
