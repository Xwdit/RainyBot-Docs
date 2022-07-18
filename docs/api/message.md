# 类: Message

[(返回目录)](./)

**继承自:** [MessageAPI](messageapi.md)

**子类:** [AppMessage](appmessage.md), [AtAllMessage](atallmessage.md), [AtMessage](atmessage.md), [BotCodeMessage](botcodemessage.md), [DiceMessage](dicemessage.md), [FaceMessage](facemessage.md), [FileMessage](filemessage.md), [FlashImageMessage](flashimagemessage.md), [ForwardMessage](forwardmessage.md), [ImageMessage](imagemessage.md), [JsonMessage](jsonmessage.md), [MarketFaceMessage](marketfacemessage.md), [MusicShareMessage](musicsharemessage.md), [PokeMessage](pokemessage.md), [QuoteMessage](quotemessage.md), [SourceMessage](sourcemessage.md), [TextMessage](textmessage.md), [VoiceMessage](voicemessage.md), [XmlMessage](xmlmessage.md)

RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类

## 描述

这是RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类\
多数消息相关操作都密切依赖于此类及其子类(构造/发送/获取消息或消息链等)

## 方法

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_metadata ( )**

获取实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* void **set\_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此消息类实例获取为字符串，具体行为请参见继承此类的每个子类

***
