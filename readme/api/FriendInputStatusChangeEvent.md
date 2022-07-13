# 类: FriendInputStatusChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [FriendEvent](FriendEvent.md)  
  
RainyBot的好友输入状态变更事件类，记录了某次好友输入状态变更事件的相关数据  
  
## 方法 
  
- [FriendInputStatusChangeEvent](FriendInputStatusChangeEvent.md) **init_meta(** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **get_input_state()**  
  
用于判断此事件对应的输入状态是开始输入还是停止输入  
  
---  
  
- [Member](Member.md) **get_member()**  
  
获取此事件对应的好友成员实例  
  
---  
  

