# 类: MemberUnmuteEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupMemberEvent](GroupMemberEvent.md)  
  
RainyBot的群成员被解除禁言类，其实例记录了与一次群成员被解除禁言事件相关的数据  
  
## 方法 
  
- static [MemberUnmuteEvent](MemberUnmuteEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
-  [GroupMember](GroupMember.md) **get_member ( )**  
  
获取此事件对应的群成员实例  
  
---  
  
-  [GroupMember](GroupMember.md) **get_operator ( )**  
  
获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主  
  
---  
  
-  [Group](Group.md) **get_group ( )**  
  
获取此事件所发生的群组实例  
  
---  
  
