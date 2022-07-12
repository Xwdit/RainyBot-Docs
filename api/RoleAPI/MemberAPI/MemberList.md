# 类: MemberList  
  
**继承自:** MemberAPI  
  
RainyBot的个体成员列表类，通常代表一个对应实例，储存了机器人所有个体成员(通常为好友)的列表  
  
## 描述  
  
这是RainyBot的个体成员列表类，通常代表一个对应实例，储存了机器人所有个体成员(通常为好友)的列表   
你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有个体成员(将返回Member类实例)  
  
## 方法 
  
- MemberList **init_meta(Array arr)**  
  
通过机器人协议后端的元数据数组构造一个MemberList类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- Array **get_metadata()**  
  
获取实例中的元数据数组，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata(Array arr)**  
  
使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用  
  
---  
  
- Member **get_from_index(int index)**  
  
根据指定的序号来从个体成员列表实例中获取对应的Member实例   
  
若序号不存在则返回null  
  
---  
  
- Member **get_from_id(int member_id)**  
  
根据指定的个体成员ID来从个体成员列表实例中获取对应的Member实例   
  
若个体成员ID不存在则返回null  
  
---  
  
- int **get_size()**  
  
获取个体成员列表实例中的个体成员实例的总数  
  
---  
  
- bool **has_member(int member_id)**  
  
判断个体成员列表实例中是否存在指定ID的个体成员实例  
  
---  
  

