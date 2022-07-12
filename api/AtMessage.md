# 类: AtMessage  
  
**继承自:** [Message](Message.md)  
  
RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊  
  
## 描述  
  
这是RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊   
此类实例代表在消息中At了某群组成员，你也可以主动构建此类实例以便进行此操作  
  
## 方法 
  
- AtMessage **init([int](https://docs.godotengine.org/en/latest/classes/class_int.html) target_id)**  
  
手动构造一个AtMessage类的实例，以便在消息中At某群组成员   
  
需要传入想要At的群组成员的ID作为参数  
  
---  
  
- AtMessage **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个AtMessage类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- int **get_target_id()**  
  
获取实例中储存的被At的群组成员的ID  
  
---  
  
- void **set_target_id([int](https://docs.godotengine.org/en/latest/classes/class_int.html) target_id)**  
  
更改实例中储存的想要At的群组成员的ID  
  
---  
  
- String **get_display_text()**  
  
获取实例中储存的被At的群组成员的显示信息(如@啦啦啦)   
  
若为手动构造的实例，将始终返回空字符串  
  
---  
  
- String **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

