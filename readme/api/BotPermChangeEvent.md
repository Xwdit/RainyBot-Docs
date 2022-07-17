# 类: BotPermChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupBotEvent](GroupBotEvent.md)  
  
RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据  
  
## 方法 
  
- static [BotPermChangeEvent](BotPermChangeEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_origin_permission ( )**  
  
获取变更前的群权限，可用权限请参考GroupMember中的Permission枚举  
  
---  
  
- [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_current_permission ( )**  
  
获取变更后的当前群权限，可用权限请参考GroupMember中的Permission枚举  
  
---  
  
- [Group](Group.md) **get_group ( )**  
  
获取此事件所发生的群组实例  
  
---  
  

