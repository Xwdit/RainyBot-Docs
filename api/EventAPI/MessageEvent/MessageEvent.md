# 类: MessageEvent  
  
**继承自:** Event  
  
**子类:** ["FriendMessageEvent", "GroupMessageEvent", "OtherClientMessageEvent", "StrangerMessageEvent", "TempMessageEvent"]  
  
# 常量/枚举  
  
- **Type.FRIEND** = **0**  
  
---  
  
- **Type.GROUP** = **1**  
  
---  
  
- **Type.TEMP** = **2**  
  
---  
  
- **Type.STRANGER** = **3**  
  
---  
  
- **Type.OTHER_CLIENT** = **4**  
  
---  
  
# 方法 
  
- **get_message_chain()**  
  
---  
  
- **get_message_array(Variant types, bool exclude=false, int max_size=-1)**  
  
---  
  
- **get_message_text(Variant types, bool exclude=false)**  
  
---  
  
- **get_message_id()**  
  
---  
  
- **get_message_timestamp()**  
  
---  
  
- **get_sender_id()**  
  
---  
  
- **reply(Variant msg, bool quote=false, bool at=false)**  
  
---  
  

