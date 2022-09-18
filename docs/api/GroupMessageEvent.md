# 类: GroupMessageEvent  
[(返回目录)](README.md)  
  
**继承自:** [MessageEvent](MessageEvent.md)  
  
RainyBot的群组消息事件类，其实例记录了与一次群组消息事件相关的数据  
  
## 方法 
  
- static [GroupMessageEvent](GroupMessageEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic= **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
-  [GroupMember](GroupMember.md) **get_sender ( )**  
  
获取消息事件对应的发送者的群组成员实例  
  
---  
  
-  [Group](Group.md) **get_group ( )**  
  
获取消息事件所对应的群组的实例  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_group_id ( )**  
  
获取消息事件所对应的群组的ID  
  
---  
  
-  [BotRequestResult](BotRequestResult.md) **recall (** [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF **)**  
  
撤回事件所对应的群消息，机器人需要在对应群组中为管理员或群组权限才能执行成功   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
-  [BotRequestResult](BotRequestResult.md) **set_essence (** [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF **)**  
  
将事件所对应的群消息设置为精华消息，机器人需要在对应群组中为管理员或群组权限才能执行成功   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
-  [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_at_bot ( )**  
  
判断事件所对应的群消息中是否AT了机器人  
  
---  
  

