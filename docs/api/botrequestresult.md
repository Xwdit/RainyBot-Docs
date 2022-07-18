# 类: BotRequestResult

[(返回目录)](./)

**继承自:** [BotAPI](botapi.md)

RainyBot的协议后端请求结果类，记录了向协议后端发送的某次请求/命令的结果数据

## 枚举

enum **StatusCode**

请求结果的状态码，可用于对比判断请求结果的当前状态

* **SUCCESS** = 0\
  请求成功
* **WRONG\_VERIFY\_KEY** = 1\
  验证密钥错误
* **BOT\_NOT\_EXIST** = 2\
  请求的Bot不存在
* **SESSION\_INVALID** = 3\
  会话无效
* **SESSION\_NOT\_ACTIVE** = 4\
  会话未活跃
* **TARGET\_NOT\_EXIST** = 5\
  目标不存在
* **FILE\_NOT\_EXIST** = 6\
  文件不存在
* **NO\_PERMISSION** = 10\
  没有权限
* **BOT\_MUTED** = 20\
  机器人被禁言
* **MESSAGE\_TOO\_LONG** = 30\
  消息长度超限
* **WRONG\_USAGE** = 400\
  命令用法有误

***

## 方法

* static [BotRequestResult](botrequestresult.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据数组构造一个BotRequestResult类的实例，仅当你知道自己在做什么时才使用

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_metadata ( )**

获取实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_status\_code ( )**

返回请求结果的状态码

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_status\_msg ( )**

返回请求结果的状态信息文本

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_message\_id ( )**

返回请求结果对应的消息ID

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_success ( )**

返回请求结果是否为成功

***

* [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **is\_status (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) code **)**

判断请求结果是否为指定的结果

***

* [BotRequestResult](botrequestresult.md) **recall (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) timeout=-INF **)**

撤回请求结果中消息ID对应的消息

可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间

***
