# 类: AtAllMessage  
  
**继承自:** [Message](https://docs.godotengine.org/en/latest/classes/class_message.html)  
  
RainyBot的At全体成员消息类，通常代表一个对应实例，此类消息仅适用于群聊  
  
## 描述  
  
这是RainyBot的At全体成员消息类，通常代表一个对应实例，此类消息仅适用于群聊   
此类实例代表在消息中At了全体成员，你也可以主动构建此类实例以便进行此操作  
  
## 方法 
  
- AtAllMessage **init()**  
  
手动构造一个AtAllMessage类的实例，以便在消息中At全体成员  
  
---  
  
- AtAllMessage **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个AtAllMessage类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- String **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  
