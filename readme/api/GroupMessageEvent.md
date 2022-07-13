# 类: GroupMessageEvent  
[(返回目录)](README.md)  
  
**继承自:** [MessageEvent](MessageEvent.md)  
  
RainyBot的群组消息事件类，其实例记录了与一次群组消息事件相关的数据  
  
## 方法 
  
[GroupMessageEvent](GroupMessageEvent.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[GroupMember](GroupMember.md) **get_sender()**  
  
获取消息事件对应的发送者的群组成员实例  
  
---  
  
[Group](Group.md) **get_group()**  
  
获取消息事件所对应的群组的实例  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_group_id()**  
  
获取消息事件所对应的群组的ID  
  
---  
  
[BotRequestResult](BotRequestResult.md) **recall()**  
  
撤回事件所对应的群消息，机器人需要在对应群组中为管理员或群组权限才能执行成功  
  
---  
  
[BotRequestResult](BotRequestResult.md) **set_essence()**  
  
将事件所对应的群消息设置为精华消息，机器人需要在对应群组中为管理员或群组权限才能执行成功  
  
---  
  
[bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_at_bot()**  
  
判断事件所对应的群消息中是否AT了机器人  
  
---  
  

