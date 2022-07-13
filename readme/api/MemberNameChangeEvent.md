# 类: MemberNameChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupMemberEvent](GroupMemberEvent.md)  
  
RainyBot的群成员昵称变更类，其实例记录了与一次群成员昵称变更事件相关的数据  
  
## 方法 
  
[MemberNameChangeEvent](MemberNameChangeEvent.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[GroupMember](GroupMember.md) **get_member()**  
  
获取此事件对应的群成员实例  
  
---  
  
[Group](Group.md) **get_group()**  
  
获取此事件所发生的群组实例  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_origin_name()**  
  
获取变更前的群昵称  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_current_name()**  
  
获取变更后的当前群昵称  
  
---  
  

