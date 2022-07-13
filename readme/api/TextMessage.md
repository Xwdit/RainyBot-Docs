# 类: TextMessage  
[(返回目录)](README.md)  
  
**继承自:** [Message](Message.md)  
  
RainyBot的文本消息类，其实例记录了与一个文本消息相关的各类数据  
  
## 方法 
  
- [TextMessage](TextMessage.md) **init (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) text **)**  
  
基于指定的文本来手动构造一个TextMessage类的实例  
  
---  
  
- [TextMessage](TextMessage.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_message_text ( )**  
  
获取此实例对应的消息文本  
  
---  
  
- void **set_message_text (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) text **)**  
  
设置此实例对应的消息文本  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_as_text ( )**  
  
将此实例获取为字符串的形式  
  
---  
  

