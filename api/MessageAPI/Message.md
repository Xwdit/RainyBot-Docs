# 类: Message  
  
**继承自:** MessageAPI  
  
**子类:** ["AppMessage", "AtAllMessage", "AtMessage", "BotCodeMessage", "DiceMessage", "FaceMessage", "FileMessage", "FlashImageMessage", "ForwardMessage", "ImageMessage", "JsonMessage", "MarketFaceMessage", "MusicShareMessage", "PokeMessage", "QuoteMessage", "SourceMessage", "TextMessage", "VoiceMessage", "XmlMessage"]  
  
RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类  
  
# 描述  
  
这是RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类   
多数消息相关操作都密切依赖于此类及其子类(构造/发送/获取消息或消息链等)  
  
# 方法 
  
- **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- **set_metadata(Dictionary dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_as_text()**  
  
将此消息类实例获取为字符串，具体行为请参见继承此类的每个子类  
  
---  
  

