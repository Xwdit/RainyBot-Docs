# 类: BotPermChangeEvent  
[(返回目录)](README.md)  
  
**继承自:** [GroupBotEvent](GroupBotEvent.md)  
  
RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据  
  
## 方法 
  
[BotPermChangeEvent](BotPermChangeEvent.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_origin_permission()**  
  
---  
  
[int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_current_permission()**  
  
---  
  
[Group](Group.md) **get_group()**  
  
---  
  

