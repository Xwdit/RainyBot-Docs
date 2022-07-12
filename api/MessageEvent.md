# 类: MessageEvent  
  
**继承自:** [Event](https://docs.godotengine.org/en/latest/classes/class_event.html)  
  
**子类:** [FriendMessageEvent](https://docs.godotengine.org/en/latest/classes/class_friendmessageevent.html), [GroupMessageEvent](https://docs.godotengine.org/en/latest/classes/class_groupmessageevent.html), [OtherClientMessageEvent](https://docs.godotengine.org/en/latest/classes/class_otherclientmessageevent.html), [StrangerMessageEvent](https://docs.godotengine.org/en/latest/classes/class_strangermessageevent.html), [TempMessageEvent](https://docs.godotengine.org/en/latest/classes/class_tempmessageevent.html)  
  
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
  

