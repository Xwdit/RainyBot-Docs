# 类: GroupAnnounceChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupEvent](GroupEvent.md)  
  
RainyBot的群组公告变更类，其实例记录了与一次群组公告变更事件相关的数据  
  
## 方法 
  
- static [GroupAnnounceChangeEvent](GroupAnnounceChangeEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
-  [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_origin_announce ( )**  
  
获取变更前的群公告文本  
  
---  
  
-  [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_current_announce ( )**  
  
获取变更后当前的群公告文本  
  
---  
  
-  [GroupMember](GroupMember.md) **get_operator ( )**  
  
获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主  
  
---  
  
-  [Group](Group.md) **get_group ( )**  
  
获取此事件实例所对应的群组实例  
  
---  
  

