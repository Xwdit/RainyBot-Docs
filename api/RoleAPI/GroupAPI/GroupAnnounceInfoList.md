# 类: GroupAnnounceInfoList  
  
**继承自:** GroupAPI  
  
RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表  
  
---  
  
# 描述  
  
这是RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表   
你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有公告信息(将返回[GroupAnnounceInfo]类实例)  
  
---  
  
# 方法 
  
- **init_meta(Array arr)**  
  
通过机器人协议后端的元数据数组构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_metadata()**  
  
获取实例中的元数据数组，仅当你知道自己在做什么时才使用  
  
---  
  
- **set_metadata(Array arr)**  
  
使用指定字典覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_from_index(int index)**  
  
根据指定的序号来从群公告信息列表实例中获取对应的[GroupAnnounceInfo]实例   
  
若序号不存在则返回null  
  
---  
  
- **get_from_id(int announce_id)**  
  
根据指定的群公告ID来从群公告信息列表实例中获取对应的[GroupAnnounceInfo]实例   
  
若群公告ID不存在则返回null  
  
---  
  
- **has_announce(int announce_id)**  
  
判断群公告信息列表实例中是否存在指定ID的群公告信息实例  
  
---  
  
- **get_size()**  
  
获取群公告信息列表实例中的群公告信息实例的总数  
  
---  
  

