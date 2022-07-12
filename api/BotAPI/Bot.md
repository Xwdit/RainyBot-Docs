# 类: Bot  
  
**继承自:** BotAPI  
  
RainyBot的Bot类，负责处理与当前使用的机器人后端账号相关的各类功能  
  
---  
  
# 方法 
  
- **get_id()**  
  
获取当前正在使用的机器人后端账号  
  
---  
  
- **is_bot_connected()**  
  
判断与机器人后端是否已建立连接  
  
---  
  
- **get_sent_message_count()**  
  
获取已通过机器人后端发送的消息的数量  
  
---  
  
- **get_group_message_count()**  
  
获取已通过机器人后端接收到的群聊消息的数量  
  
---  
  
- **get_private_message_count()**  
  
获取已通过机器人后端接收到的私聊消息的数量  
  
---  
  
- **get_avatar_url()**  
  
获取机器人后端账号的头像的图像链接，通常为jpg格式  
  
---  
  
- **get_friend_list(float timeout=inf_neg)**  
  
获取当前机器人账号的好友列表，需要与await关键词配合使用   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- **get_group_list(float timeout=inf_neg)**  
  
获取当前机器人账号的群组列表，需要与await关键词配合使用   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- **get_profile(float timeout=inf_neg)**  
  
获取当前机器人账号的资料卡，需要与await关键词配合使用   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  
- **get_cache_message(int msg_id, float timeout=inf_neg)**  
  
从当前机器人账号的历史消息缓存中获取指定id的缓存消息，需要与await关键词配合使用   
  
可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间  
  
---  
  

