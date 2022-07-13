# 类: GroupAnnounceInfo  
[(返回目录)](README.md)  
  
**继承自:** [GroupAPI](GroupAPI.md)  
  
RainyBot的群公告信息类，其实例记录了一个已发送的群公告的相关信息  
  
## 描述  
  
这是RainyBot的群公告信息类，其实例记录了一个已发送的群公告的相关信息   
此类实例通常不应被手动构造，而是由诸如获取群公告一类的方法返回  
  
## 方法 
  
- [GroupAnnounceInfo](GroupAnnounceInfo.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata ( )**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_id ( )**  
  
获取此群公告的唯一ID，可用于后续删除等操作  
  
---  
  
- [Group](Group.md) **get_group ( )**  
  
获取此群公告相关的群的实例  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_content ( )**  
  
获取此群公告中包含的内容文本  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_sender_id ( )**  
  
获取此群公告的发送者的ID  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_all_confirmed ( )**  
  
获取此群公告是否已被全体群成员确认  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_confirmed_count ( )**  
  
获取已确认此群公告的群成员人数  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_public_timestamp ( )**  
  
获取此群公告发布时间的时间戳  
  
---  
  

