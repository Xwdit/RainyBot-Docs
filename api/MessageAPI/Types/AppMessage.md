# 类: AppMessage  
  
**继承自:** Message  
  
RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景  
  
---  
  
# 描述  
  
这是RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景   
此类实例中储存了App消息的代码原文本，你也可以基于指定APP消息代码文本来构建一个此类实例  
  
---  
  
# 方法 
  
- **init(String text)**  
  
基于指定的App消息代码文本来手动构造一个AppMessage类的实例  
  
---  
  
- **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据字典构造一个AppMessage类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_app_text()**  
  
获取实例中储存的App消息代码文本  
  
---  
  
- **set_app_text(String text)**  
  
更改实例中储存的App消息代码文本  
  
---  
  
- **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

