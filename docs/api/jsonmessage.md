# 类: JsonMessage

[(返回目录)](./)

**继承自:** [Message](message.md)

RainyBot的Json消息类，其实例记录了与一个Json消息相关的各类数据

## 方法

* static [JsonMessage](jsonmessage.md) **init (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

基于指定的文本来手动构造一个JsonMessage类的实例

***

* static [JsonMessage](jsonmessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_json\_text ( )**

获取此实例中对应的JSON文本

***

* void **set\_json\_text (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例中对应的JSON文本

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***