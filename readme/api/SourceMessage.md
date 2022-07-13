# 类: SourceMessage  
[(返回目录)](README.md)  
  
**继承自:** [Message](Message.md)  
  
RainyBot的消息链源消息类，其实例记录了某个接收到的消息链的消息ID，发送时间等数据  
  
## 方法 
  
- [SourceMessage](SourceMessage.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_message_id()**  
  
获取此实例对应的消息链的ID  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_timestamp()**  
  
获取此实例对应的消息链的发送时间戳  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

