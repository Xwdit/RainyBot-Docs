# 类: FaceMessage

[(返回目录)](./)

**继承自:** [Message](message.md)

RainyBot的表情消息类，其实例记录了与一个表情消息相关的各类数据

## 方法

* static [FaceMessage](facemessage.md) **init (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) face **)**

用于手动构造一个表情消息实例；若传入的参数为整数，则基于表情ID进行构造；若为字符串，则基于表情名称进行构造

***

* static [FaceMessage](facemessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_face\_id ( )**

获取此实例对应的表情的ID

***

* void **set\_face\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) face\_id **)**

设置此实例对应的表情的ID

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_face\_name ( )**

获取此实例对应的表情的名称

***

* void **set\_face\_name (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) face\_name **)**

设置此实例对应的表情的名称

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
