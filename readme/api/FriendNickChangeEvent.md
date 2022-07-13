# 类: FriendNickChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [FriendEvent](FriendEvent.md)  
  
RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据  
  
## 方法 
  
- [FriendNickChangeEvent](FriendNickChangeEvent.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_origin_nickname()**  
  
获取此事件对应的好友的原昵称  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_current_nickname()**  
  
获取此事件对应的好友更改后的昵称  
  
---  
  
- [Member](Member.md) **get_member()**  
  
获取此事件对应的好友的成员实例  
  
---  
  

