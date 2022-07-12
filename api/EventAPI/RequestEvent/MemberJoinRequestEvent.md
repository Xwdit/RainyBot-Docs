# 类: MemberJoinRequestEvent  
  
**继承自:** RequestEvent  
  
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
  
- MemberJoinRequestEvent **init_meta(Dictionary dic)**  
  
---  
  
- String **get_group_name()**  
  
---  
  
- BotRequestResult **respond(int respond_type, String msg="", float timeout=-INF)**  
  
---  
  

