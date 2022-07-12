# 类: Message  
  
**继承自:** [MessageAPI](https://docs.godotengine.org/en/latest/classes/class_messageapi.html)  
  
**子类:** [AppMessage](https://docs.godotengine.org/en/latest/classes/class_appmessage.html), [AtAllMessage](https://docs.godotengine.org/en/latest/classes/class_atallmessage.html), [AtMessage](https://docs.godotengine.org/en/latest/classes/class_atmessage.html), [BotCodeMessage](https://docs.godotengine.org/en/latest/classes/class_botcodemessage.html), [DiceMessage](https://docs.godotengine.org/en/latest/classes/class_dicemessage.html), [FaceMessage](https://docs.godotengine.org/en/latest/classes/class_facemessage.html), [FileMessage](https://docs.godotengine.org/en/latest/classes/class_filemessage.html), [FlashImageMessage](https://docs.godotengine.org/en/latest/classes/class_flashimagemessage.html), [ForwardMessage](https://docs.godotengine.org/en/latest/classes/class_forwardmessage.html), [ImageMessage](https://docs.godotengine.org/en/latest/classes/class_imagemessage.html), [JsonMessage](https://docs.godotengine.org/en/latest/classes/class_jsonmessage.html), [MarketFaceMessage](https://docs.godotengine.org/en/latest/classes/class_marketfacemessage.html), [MusicShareMessage](https://docs.godotengine.org/en/latest/classes/class_musicsharemessage.html), [PokeMessage](https://docs.godotengine.org/en/latest/classes/class_pokemessage.html), [QuoteMessage](https://docs.godotengine.org/en/latest/classes/class_quotemessage.html), [SourceMessage](https://docs.godotengine.org/en/latest/classes/class_sourcemessage.html), [TextMessage](https://docs.godotengine.org/en/latest/classes/class_textmessage.html), [VoiceMessage](https://docs.godotengine.org/en/latest/classes/class_voicemessage.html), [XmlMessage](https://docs.godotengine.org/en/latest/classes/class_xmlmessage.html)  
  
RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类  
  
## 描述  
  
这是RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类   
多数消息相关操作都密切依赖于此类及其子类(构造/发送/获取消息或消息链等)  
  
## 方法 
  
- Dictionary **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- String **get_as_text()**  
  
将此消息类实例获取为字符串，具体行为请参见继承此类的每个子类  
  
---  
  

