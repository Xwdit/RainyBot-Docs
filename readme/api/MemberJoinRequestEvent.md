# 类: MemberJoinRequestEvent  
[(返回目录)](README.md)  
  
**继承自:** [RequestEvent](RequestEvent.md)  
  
RainyBot的新成员入群请求事件类，其实例记录了与一次新成员入群请求事件相关的数据  
  
## 枚举  
  
enum **RespondType**  
  
可用于回应请求的回应类型  
  
- **ACCEPT** = 0  
允许新成员入群  
  
- **REFUSE** = 1  
拒绝新成员入群  
  
- **IGNORE** = 2  
忽略新成员的入群请求  
  
- **REFUSE_BLACKLIST** = 3  
拒绝新成员入群并加入黑名单  
  
- **IGNORE_BLACKLIST** = 4  
忽略新成员的入群请求并加入黑名单  
  
---  
  
## 方法 
  
- [MemberJoinRequestEvent](MemberJoinRequestEvent.md) **init_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic **)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_group_name ( )**  
  
获取事件对应的新成员希望加入的群的名称  
  
---  
  

