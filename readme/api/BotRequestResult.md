# 类: BotRequestResult  
[(返回目录)](README.md)  
  
**继承自:** [BotAPI](BotAPI.md)  
  
RainyBot的协议后端请求结果类，记录了向协议后端发送的某次请求/命令的结果数据  
  
## 枚举  
  
enum **StatusCode**  
  
请求结果的状态码，可用于对比判断请求结果的当前状态  
  
**SUCCESS** = 0  
请求成功  
  
**WRONG_VERIFY_KEY** = 1  
验证密钥错误  
  
**BOT_NOT_EXIST** = 2  
请求的Bot不存在  
  
**SESSION_INVALID** = 3  
会话无效  
  
**SESSION_NOT_ACTIVE** = 4  
会话未活跃  
  
**TARGET_NOT_EXIST** = 5  
目标不存在  
  
**FILE_NOT_EXIST** = 6  
文件不存在  
  
**NO_PERMISSION** = 10  
没有权限  
  
**BOT_MUTED** = 20  
机器人被禁言  
  
**MESSAGE_TOO_LONG** = 30  
消息长度超限  
  
**WRONG_USAGE** = 400  
命令用法有误  
  
---  
  
## 方法 
  
[BotRequestResult](BotRequestResult.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据数组构造一个BotRequestResult类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_status_code()**  
  
返回请求结果的状态码  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_status_msg()**  
  
返回请求结果的状态信息文本  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_message_id()**  
  
返回请求结果对应的消息ID  
  
---  
  
[bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_success()**  
  
返回请求结果是否为成功  
  
---  
  
[bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_status([int](https://docs.godotengine.org/en/latest/classes/class_int.html) code)**  
  
判断请求结果是否为指定的结果  
  
---  
  
[BotRequestResult](BotRequestResult.md) **recall([float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout)**  
  
撤回请求结果中消息ID对应的消息   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  

