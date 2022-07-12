# 类: FriendRecallEvent  
  
**继承自:** FriendEvent  
  
RainyBot的好友消息撤回事件类，记录了某次好友消息撤回事件的相关数据  
  
# 方法 
  
- **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_sender_id()**  
  
获取事件原消息发送者的ID  
  
---  
  
- **get_message_id()**  
  
获取事件对应的原消息的ID  
  
---  
  
- **get_message_time()**  
  
获取事件对应的原消息的发送时间  
  
---  
  
- **get_operator_id()**  
  
获取造成此事件的成员的ID(通常为此事件对应的好友的ID或Bot自身的ID)  
  
---  
  

