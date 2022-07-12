# 类: BotCodeMessage  
  
**继承自:** Message  
  
RainyBot的BotCode消息类，通常代表一个对应实例，可用于快捷发送一段包含多种类型的消息  
  
## 描述  
  
这是RainyBot的BotCode消息类，通常代表一个对应实例，可用于快捷发送一段包含多种类型的消息   
此类实例通常不会出现在消息链中，而是用于主动构建此类实例以便快捷发送消息  
  
## 方法 
  
- BotCodeMessage **init(String text)**  
  
基于包含BotCode的文本来构造BotCodeMessage的实例，以便快捷发送复杂消息  
  
---  
  
- BotCodeMessage **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据字典构造一个BotCodeMessage类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- String **get_code_text()**  
  
获取实例中储存的BotCode文本  
  
---  
  
- void **set_code_text(String text)**  
  
更改实例中储存的BotCode文本  
  
---  
  
- String **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

