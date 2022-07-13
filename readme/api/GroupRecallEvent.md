# 类: GroupRecallEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupEvent](GroupEvent.md)  
  
RainyBot的群组消息撤回类，其实例记录了与一次群组消息撤回事件相关的数据  
  
## 方法 
  
- [GroupRecallEvent](GroupRecallEvent.md) **init_meta(** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_sender_id()**  
  
获取被撤回的消息的发送者ID  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_message_id()**  
  
获取被撤回的消息的ID  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_message_timestamp()**  
  
获取被撤回的消息的发送时间戳  
  
---  
  
- [GroupMember](GroupMember.md) **get_operator()**  
  
获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是发送者自己  
  
---  
  
- [Group](Group.md) **get_group()**  
  
获取此事件实例所对应的群组实例  
  
---  
  

