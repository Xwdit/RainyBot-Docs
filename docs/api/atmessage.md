# 类: AtMessage

[(返回目录)](./)

**继承自:** [Message](message.md)

RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊

## 描述

这是RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊\
此类实例代表在消息中At了某群组成员，你也可以主动构建此类实例以便进行此操作

## 方法

* static [AtMessage](atmessage.md) **init (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) target\_id **)**

手动构造一个AtMessage类的实例，以便在消息中At某群组成员

需要传入想要At的群组成员的ID作为参数

***

* static [AtMessage](atmessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个AtMessage类的实例，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_target\_id ( )**

获取实例中储存的被At的群组成员的ID

***

* void **set\_target\_id (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) target\_id **)**

更改实例中储存的想要At的群组成员的ID

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_display\_text ( )**

获取实例中储存的被At的群组成员的显示信息(如@啦啦啦)

若为手动构造的实例，将始终返回空字符串

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
