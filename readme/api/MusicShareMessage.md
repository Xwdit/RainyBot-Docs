# 类: MusicShareMessage  
[(返回目录)](README.md)  
  
**继承自:** [Message](Message.md)  
  
RainyBot的音乐分享消息类，其实例记录了与一个音乐分享消息相关的各类数据  
  
## 方法 
  
- [MusicShareMessage](MusicShareMessage.md) **init(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) kind, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) title, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) summary, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) jump_url, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) picture_url, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) music_url, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) brief**)**  
  
基于指定的参数来手动构造一个MusicShareMessage类的实例   
  
需要的参数从左到右分别为: 类型，标题，概括，跳转链接，封面图像链接，音乐文件链接，简介  
  
---  
  
- [MusicShareMessage](MusicShareMessage.md) **init_meta(**[Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic**)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_kind()**  
  
获取此实例对应的分享类型  
  
---  
  
- void **set_share_kind(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享类型  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_title()**  
  
获取此实例对应的分享标题  
  
---  
  
- void **set_share_title(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享标题  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_summary()**  
  
获取此实例对应的分享概括  
  
---  
  
- void **set_share_summary(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享概括  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_jump_url()**  
  
获取此实例对应的分享跳转链接  
  
---  
  
- void **set_share_jump_url(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享跳转链接  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_picture_url()**  
  
获取此实例对应的分享封面图像链接  
  
---  
  
- void **set_share_picture_url(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享封面图像链接  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_music_url()**  
  
获取此实例对应的分享音乐文件链接  
  
---  
  
- void **set_share_music_url(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享音乐文件链接  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_share_brief()**  
  
获取此实例对应的分享简介  
  
---  
  
- void **set_share_brief(**[String](https://docs.godotengine.org/en/latest/classes/class_string.html) text**)**  
  
设置此实例对应的分享简介  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

