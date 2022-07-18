# 类: MusicShareMessage

[(返回目录)](./)

**继承自:** [Message](message.md)

RainyBot的音乐分享消息类，其实例记录了与一个音乐分享消息相关的各类数据

## 方法

* static [MusicShareMessage](musicsharemessage.md) **init (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) kind, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) title, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) summary, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) jump\_url, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) picture\_url, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) music\_url, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) brief **)**

基于指定的参数来手动构造一个MusicShareMessage类的实例

需要的参数从左到右分别为: 类型，标题，概括，跳转链接，封面图像链接，音乐文件链接，简介

***

* static [MusicShareMessage](musicsharemessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_kind ( )**

获取此实例对应的分享类型

***

* void **set\_share\_kind (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享类型

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_title ( )**

获取此实例对应的分享标题

***

* void **set\_share\_title (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享标题

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_summary ( )**

获取此实例对应的分享概括

***

* void **set\_share\_summary (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享概括

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_jump\_url ( )**

获取此实例对应的分享跳转链接

***

* void **set\_share\_jump\_url (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享跳转链接

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_picture\_url ( )**

获取此实例对应的分享封面图像链接

***

* void **set\_share\_picture\_url (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享封面图像链接

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_music\_url ( )**

获取此实例对应的分享音乐文件链接

***

* void **set\_share\_music\_url (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享音乐文件链接

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_share\_brief ( )**

获取此实例对应的分享简介

***

* void **set\_share\_brief (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text **)**

设置此实例对应的分享简介

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
