# 类: OtherClient  
  
**继承自:** [RoleAPI](RoleAPI.md)  
  
RainyBot的其它客户端类，通常代表一个对应实例，实现了用于与其他客户端进行交互的各类功能  
  
## 描述  
  
这是RainyBot的其它客户端类，通常代表一个对应实例，实现了用于与其他客户端进行交互的各类功能   
其他客户端的概念，指如当机器人后端使用手机协议登陆时，平板/PC/智能手表端此时即为其他客户端  
  
## 方法 
  
- OtherClient **init()**  
  
手动构造一个OtherClient类的实例，用于主动进行与其他客户端的交互时使用  
  
---  
  
- OtherClient **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个OtherClient类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- Dictionary **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- int **get_id()**  
  
获取实例中其他客户端的客户端id  
  
---  
  
- String **get_platform()**  
  
获取实例中其他客户端的平台名(如"Windows")  
  
---  
  
- BotRequestResult **send_message([Variant](https://docs.godotengine.org/en/latest/classes/class_variant.html) msg, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) quote_msgid, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout)**  
  
向其它客户端发送消息,第二个参数为需要引用回复的消息id(可选)   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
传入的第一个参数可以是以下类型:   
- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送)   
- 单个消息实例(将其作为消息链中的唯一消息实例发送)   
- 消息链实例(将其内容复制并发送)   
- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送)   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **send_nudge([float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout)**  
  
向其它客户端发送一个戳一戳消息，   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  

