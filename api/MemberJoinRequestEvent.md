# 类: MemberJoinRequestEvent  
  
**继承自:** [RequestEvent](RequestEvent.md)  
  
## 常量/枚举  
  
- **RespondType.ACCEPT** = **0**  
  
---  
  
- **RespondType.REFUSE** = **1**  
  
---  
  
- **RespondType.IGNORE** = **2**  
  
---  
  
- **RespondType.REFUSE_BLACKLIST** = **3**  
  
---  
  
- **RespondType.IGNORE_BLACKLIST** = **4**  
  
---  
  
## 方法 
  
- MemberJoinRequestEvent **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
---  
  
- String **get_group_name()**  
  
---  
  
- BotRequestResult **respond([int](https://docs.godotengine.org/en/latest/classes/class_int.html) respond_type, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) msg="", [float](https://docs.godotengine.org/en/latest/classes/class_float.html) timeout=-INF)**  
  
---  
  

