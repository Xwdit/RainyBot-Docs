# 类: DiceMessage

[(返回目录)](./)

**继承自:** [Message](Message.md)

RainyBot的骰子消息类，其实例记录了与一个骰子消息相关的各类数据

## 方法

* static [DiceMessage](DiceMessage.md) **init (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) value **)**

通过指定一个骰子点数来手动构造一个骰子消息类实例

***

* static [DiceMessage](DiceMessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_dice\_value ( )**

获取此消息实例对应的骰子的点数

***

* void **set\_dice\_value (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) value **)**

设置此消息实例对应的骰子的点数

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
