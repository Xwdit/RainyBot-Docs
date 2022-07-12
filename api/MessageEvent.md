# 类: MessageEvent  
  
**继承自:** [Event](Event.md)  
  
**子类:** [FriendMessageEvent](FriendMessageEvent.md), [GroupMessageEvent](GroupMessageEvent.md), [OtherClientMessageEvent](OtherClientMessageEvent.md), [StrangerMessageEvent](StrangerMessageEvent.md), [TempMessageEvent](TempMessageEvent.md)  
  
## 常量/枚举  
  
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
  
## 方法 
  
- MessageChain **get_message_chain()**  
  
---  
  
- Array **get_message_array([Variant](https://docs.godotengine.org/en/latest/classes/class_variant.html) types, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) exclude=false, [int](https://docs.godotengine.org/en/latest/classes/class_int.html) max_size=-1)**  
  
---  
  
- String **get_message_text([Variant](https://docs.godotengine.org/en/latest/classes/class_variant.html) types, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) exclude=false)**  
  
---  
  
- int **get_message_id()**  
  
---  
  
- int **get_message_timestamp()**  
  
---  
  
- int **get_sender_id()**  
  
---  
  
- BotRequestResult **reply([Variant](https://docs.godotengine.org/en/latest/classes/class_variant.html) msg, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) quote=false, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) at=false)**  
  
---  
  

