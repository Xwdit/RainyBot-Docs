# 类: FileMessage

[(返回目录)](./)

**继承自:** [Message](Message.md)

RainyBot的文件消息类，其实例记录了与一个文件消息相关的各类数据

## 方法

* static [FileMessage](FileMessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_file\_id ( )**

获取此消息实例对应的文件的ID

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_file\_name ( )**

获取此消息实例对应的文件的名称

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_file\_size ( )**

获取此消息实例对应的文件的大小

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
