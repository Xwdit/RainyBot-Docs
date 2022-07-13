# 类: ForwardMessageNode  
[(返回目录)](README.md)  
  
**继承自:** [MessageAPI](MessageAPI.md)  
  
这是RainyBot的单条转发消息类，其实例储存了一系列合并转发消息中的单条消息的相关数据  
  
## 方法 
  
[ForwardMessageNode](ForwardMessageNode.md) **init([int](https://docs.godotengine.org/en/latest/classes/class_int.html) message_id, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) sender_id, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) time, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) sender_name, [MessageChain](MessageChain.md) message_chain)**  
  
基于指定的参数来手动构造一个ForwardMessageNode类的实例   
  
需要的参数从左到右分别为: 被转发的消息ID，被转发的消息的发送者ID,被转发的消息的发送时间戳，被转发的消息的发送者名称，被转发的消息的消息链  
  
---  
  
[ForwardMessageNode](ForwardMessageNode.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_sender_id()**  
  
获取此实例对应的消息的发送者的ID  
  
---  
  
void **set_sender_id([int](https://docs.godotengine.org/en/latest/classes/class_int.html) id)**  
  
设置此实例对应的消息的发送者的ID  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_timestamp()**  
  
获取此实例对应的消息的发送时间戳  
  
---  
  
void **set_timestamp([int](https://docs.godotengine.org/en/latest/classes/class_int.html) time)**  
  
设置此实例对应的消息的发送时间戳  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_sender_name()**  
  
获取此实例对应的消息的发送者的名称  
  
---  
  
void **set_sender_name([int](https://docs.godotengine.org/en/latest/classes/class_int.html) name)**  
  
设置此实例对应的消息的发送者的名称  
  
---  
  
[MessageChain](MessageChain.md) **get_message_chain()**  
  
获取此实例对应的消息的消息链实例  
  
---  
  
void **set_message_chain([MessageChain](MessageChain.md) msg_chain)**  
  
设置此实例对应的消息的消息链实例  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_message_id()**  
  
获取此实例对应的消息的ID  
  
---  
  
void **set_message_id([int](https://docs.godotengine.org/en/latest/classes/class_int.html) id)**  
  
设置此实例对应的消息的ID  
  
---  
  

