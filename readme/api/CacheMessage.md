# 类: CacheMessage  
[(返回目录)](README.md)  
  
**继承自:** [MessageAPI](MessageAPI.md)  
  
RainyBot的缓存消息类，通常代表一个对应实例，用于储存从机器人后端缓存中读取的消息的相关信息  
  
## 描述  
  
这是RainyBot的缓存消息类，通常代表一个对应实例，用于储存从机器人后端缓存中读取的消息的相关信息   
此类实例中通常储存了消息对应的消息链，以及消息对应的发送者实例等信息  
  
## 方法 
  
- [CacheMessage](CacheMessage.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个CacheMessage类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata ( )**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- [MessageChain](MessageChain.md) **get_message_chain ( )**  
  
获取缓存消息实例中储存的消息对应的消息链  
  
---  
  
- [RoleAPI](RoleAPI.md) **get_sender ( )**  
  
获取缓存消息实例中储存的消息对应的发送者实例   
  
返回的类型不定，可能返回Member,GroupMember或OtherClient类的实例  
  
---  
  

