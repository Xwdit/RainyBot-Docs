# 类: BotPermChangeEvent  
  
**继承自:** [GroupBotEvent](https://docs.godotengine.org/en/latest/classes/class_groupbotevent.html)  
  
RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据  
  
## 方法 
  
- BotPermChangeEvent **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- int **get_origin_permission()**  
  
---  
  
- int **get_current_permission()**  
  
---  
  
- Group **get_group()**  
  
---  
  

