# 类: Message  
[(返回目录)](README.md)  
  
**继承自:** [MessageAPI](MessageAPI.md)  
  
**子类:** [AppMessage](AppMessage.md), [AtAllMessage](AtAllMessage.md), [AtMessage](AtMessage.md), [BotCodeMessage](BotCodeMessage.md), [DiceMessage](DiceMessage.md), [FaceMessage](FaceMessage.md), [FileMessage](FileMessage.md), [FlashImageMessage](FlashImageMessage.md), [ForwardMessage](ForwardMessage.md), [ImageMessage](ImageMessage.md), [JsonMessage](JsonMessage.md), [MarketFaceMessage](MarketFaceMessage.md), [MusicShareMessage](MusicShareMessage.md), [PokeMessage](PokeMessage.md), [QuoteMessage](QuoteMessage.md), [SourceMessage](SourceMessage.md), [TextMessage](TextMessage.md), [VoiceMessage](VoiceMessage.md), [XmlMessage](XmlMessage.md)  
  
RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类  
  
## 描述  
  
这是RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类   
多数消息相关操作都密切依赖于此类及其子类(构造/发送/获取消息或消息链等)  
  
## 方法 
  
[Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_as_text()**  
  
将此消息类实例获取为字符串，具体行为请参见继承此类的每个子类  
  
---  
  

