# 类: FriendNickChangeEvent  
  
**继承自:** FriendEvent  
  
RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据  
  
---  
  
# 方法 
  
- **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_origin_nickname()**  
  
获取此事件对应的好友的原昵称  
  
---  
  
- **get_current_nickname()**  
  
获取此事件对应的好友更改后的昵称  
  
---  
  
- **get_member()**  
  
获取此事件对应的好友的成员实例  
  
---  
  

