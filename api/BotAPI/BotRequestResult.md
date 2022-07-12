# 类: BotRequestResult  
  
**继承自:** BotAPI  
  
RainyBot的协议后端请求结果类，记录了向协议后端发送的某次请求/命令的结果数据  
  
## 常量/枚举  
  
- **StatusCode.SUCCESS** = **0**  
  
请求成功  
  
---  
  
- **StatusCode.WRONG_VERIFY_KEY** = **1**  
  
验证密钥错误  
  
---  
  
- **StatusCode.BOT_NOT_EXIST** = **2**  
  
请求的Bot不存在  
  
---  
  
- **StatusCode.SESSION_INVALID** = **3**  
  
会话无效  
  
---  
  
- **StatusCode.SESSION_NOT_ACTIVE** = **4**  
  
会话未活跃  
  
---  
  
- **StatusCode.TARGET_NOT_EXIST** = **5**  
  
目标不存在  
  
---  
  
- **StatusCode.FILE_NOT_EXIST** = **6**  
  
文件不存在  
  
---  
  
- **StatusCode.NO_PERMISSION** = **10**  
  
没有权限  
  
---  
  
- **StatusCode.BOT_MUTED** = **20**  
  
机器人被禁言  
  
---  
  
- **StatusCode.MESSAGE_TOO_LONG** = **30**  
  
消息长度超限  
  
---  
  
- **StatusCode.WRONG_USAGE** = **400**  
  
命令用法有误  
  
---  
  
## 方法 
  
- **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据数组构造一个BotRequestResult类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- **set_metadata(Dictionary dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_status_code()**  
  
返回请求结果的状态码  
  
---  
  
- **get_status_msg()**  
  
返回请求结果的状态信息文本  
  
---  
  
- **get_message_id()**  
  
返回请求结果对应的消息ID  
  
---  
  
- **is_success()**  
  
返回请求结果是否为成功  
  
---  
  
- **is_status(int code)**  
  
判断请求结果是否为指定的结果  
  
---  
  
- **recall(float timeout=-INF)**  
  
撤回请求结果中消息ID对应的消息   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
