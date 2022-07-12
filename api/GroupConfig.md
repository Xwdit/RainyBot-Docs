# 类: GroupConfig  
  
**继承自:** [GroupAPI](GroupAPI.md)  
  
RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息  
  
## 描述  
  
这是RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息   
对此类实例中内容的更改不会直接影响群组的配置，需要在更改完成后于群组实例中将此类实例设定为群组配置  
  
## 方法 
  
- GroupConfig **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个GroupConfig类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- Dictionary **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- String **get_name()**  
  
获取群组配置实例中储存的群名称  
  
---  
  
- String **get_announcement()**  
  
获取群组配置实例中储存的入群公告  
  
---  
  
- bool **get_confess_talk()**  
  
获取群组配置实例中储存的坦白说启用状态  
  
---  
  
- bool **get_allow_member_invite()**  
  
获取群组配置实例中储存的允许邀请入群启用状态  
  
---  
  
- bool **get_auto_approve()**  
  
获取群组配置实例中储存的自动入群审批启用状态  
  
---  
  
- bool **get_anonymous_chat()**  
  
获取群组配置实例中储存的匿名聊天启用状态  
  
---  
  
- void **set_name([String](https://docs.godotengine.org/en/latest/classes/class_string.html) name)**  
  
更改群组配置实例中储存的群名称  
  
---  
  
- void **set_announcement([String](https://docs.godotengine.org/en/latest/classes/class_string.html) text)**  
  
更改群组配置实例中储存的入群公告  
  
---  
  
- void **set_confess_talk([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
更改群组配置实例中储存的坦白说启用状态  
  
---  
  
- void **set_allow_member_invite([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
更改群组配置实例中储存的允许邀请入群启用状态  
  
---  
  
- void **set_auto_approve([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
更改群组配置实例中储存的自动入群审批启用状态  
  
---  
  
- void **set_anonymous_chat([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
更改群组配置实例中储存的匿名聊天启用状态  
  
---  
  

