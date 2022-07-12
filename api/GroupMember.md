# 类: GroupMember  
  
**继承自:** [GroupAPI](https://docs.godotengine.org/en/latest/classes/class_groupapi.html)  
  
RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能  
  
## 描述  
  
这是RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能   
绝大部分与群组中某位成员相关的操作都可以通过此类来进行  
  
## 常量/枚举  
  
- **Permission.MEMBER** = **0**  
  
代表权限为群聊中的普通成员  
  
---  
  
- **Permission.ADMINISTRATOR** = **1**  
  
代表权限为群聊中的管理员  
  
---  
  
- **Permission.OWNER** = **2**  
  
代表权限为群聊中的群主  
  
---  
  
## 方法 
  
- GroupMember **init([int](https://docs.godotengine.org/en/latest/classes/class_int.html) group_id, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) member_id)**  
  
手动构造一个GroupMember类的实例，用于主动进行与群成员的交互时使用   
  
需要传入的参数分别为群成员所属群聊的ID(群号)，群成员自身的ID  
  
---  
  
- GroupMember **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个GroupMember类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- Dictionary **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- int **get_id()**  
  
获取群成员实例的ID  
  
---  
  
- String **get_name()**  
  
获取群成员实例在群聊中的名称(群昵称)，若为手动构造的实例，将始终返回空字符串  
  
---  
  
- String **get_special_title()**  
  
获取群成员实例在群聊中的特别称号(群荣誉)，若为手动构造的实例，将始终返回空字符串  
  
---  
  
- int **get_permission()**  
  
获取群成员实例在群聊中的权限，将返回一个对应Permission枚举的整数值   
  
若为手动构造的实例，将始终返回0  
  
---  
  
- String **get_avatar_url()**  
  
获取群成员实例对应账号的头像的图像链接，通常为jpg格式  
  
---  
  
- bool **is_permission([int](https://docs.godotengine.org/en/latest/classes/class_int.html) perm)**  
  
判断群成员实例的类型是否为指定的类型  
  
---  
  
- int **get_join_timestamp()**  
  
获取群成员实例加入其所在群聊的时间戳，若为手动构造的实例，将始终返回0  
  
---  
  
- int **get_last_speak_timestamp()**  
  
获取群成员实例在对应群聊中上次发言的时间戳，若为手动构造的实例，将始终返回0  
  
---  
  
- int **get_mute_time_remaining()**  
  
获取群成员实例在对应群聊中剩余的禁言时间(秒)，若为手动构造的实例，将始终返回0  
  
---  
  
- Group **get_group()**  
  
获取群成员实例所在群聊的Group实例，   
  
若为群成员为手动构造的实例，则返回的Group实例也等同于使用Group.init()手动构造的实例  
  
---  
  
- MemberProfile **get_profile([float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
获取记录了群成员实例相关资料的MemberProfile实例，需要配合await关键字使用   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **change_name([String](https://docs.godotengine.org/en/latest/classes/class_string.html) new_name, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
更改群成员实例在其对应群聊中的名称(群昵称)   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **change_special_title([String](https://docs.godotengine.org/en/latest/classes/class_string.html) new_title, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
更改群成员实例在其对应群聊中的特别称号(群荣誉)   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **toggle_admin([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
开关群成员实例在其对应群聊中的管理员权限，机器人需要为群主才可执行   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **kick([String](https://docs.godotengine.org/en/latest/classes/class_string.html) message="", [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
将群成员实例移出其所在的对应群聊，机器人需要为管理员或群主才可执行   
  
可传入一个消息参数作为移出群聊的理由，但可能不会被显示   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **mute([int](https://docs.godotengine.org/en/latest/classes/class_int.html) time=1800, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
将群成员实例在其所在的群聊中禁言指定的秒数，机器人需要为管理员或群主才可执行   
  
若不传入秒数则默认为禁言1800秒   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **unmute([float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
将群成员实例在其所在的群聊中解除禁言，机器人需要为管理员或群主才可执行   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **send_message([Variant](https://docs.godotengine.org/en/latest/classes/class_variant.html) msg, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) quote_msgid=-1, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
通过群临时会话，向群成员实例私聊发送消息，同时可指定一个需要引用回复的消息ID   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
传入的第一个参数可以是以下类型:   
- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送)   
- 单个消息实例(将其作为消息链中的唯一消息实例发送)   
- 消息链实例(将其内容复制并发送)   
- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送)   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- BotRequestResult **send_nudge([float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
通过群临时会话，向群成员实例私聊发送一个戳一戳消息   
  
配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  

