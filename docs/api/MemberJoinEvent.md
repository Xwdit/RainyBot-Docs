# 类: MemberJoinEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupMemberEvent](GroupMemberEvent.md)  
  
RainyBot的新成员入群类，其实例记录了与一次新成员入群事件相关的数据  
  
## 方法 
  
- static [MemberJoinEvent](MemberJoinEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic= **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
-  [GroupMember](GroupMember.md) **get_member ( )**  
  
获取此事件对应的群成员实例  
  
---  
  
-  [GroupMember](GroupMember.md) **get_invitor ( )**  
  
获取邀请新成员入群的群成员的实例  
  
---  
  
-  [Group](Group.md) **get_group ( )**  
  
获取此事件所发生的群组实例  
  
---  
  

