# 类: GroupAnnounce  
  
**继承自:** [GroupAPI](GroupAPI.md)  
  
RainyBot的群公告类，其实例记录了一个将被用于发送的群公告的相关信息  
  
## 描述  
  
这是RainyBot的群公告类，其实例记录了一个将被用于发送的群公告的相关信息   
此类实例通常需要被手动构造，以用于向某个特定群组中发送一条群公告  
  
## 方法 
  
- [GroupAnnounce](GroupAnnounce.md) **init([String](https://docs.godotengine.org/en/latest/classes/class_string.html) content)**  
  
基于指定的内容文本构造一个群公告实例，您可以稍后通过实例中的其它函数来设置此公告的更多属性  
  
---  
  
- [GroupAnnounce](GroupAnnounce.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- [Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) **get_metadata()**  
  
获取实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_metadata([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用  
  
---  
  
- void **set_content([String](https://docs.godotengine.org/en/latest/classes/class_string.html) text)**  
  
设置公告实例中的公告内容文本，此项为此实例可被正常发送的必要条件，因此不可为空  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_content()**  
  
获取公告实例中的公告内容文本  
  
---  
  
- void **set_send_to_new_member([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
设置此公告实例是否向新成员展示  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_send_to_new_member()**  
  
获取此公告实例是否向新成员展示  
  
---  
  
- void **set_pinned([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
设置此公告实例是否在公告列表中置顶  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_pinned()**  
  
获取此公告实例是否在公告列表中置顶  
  
---  
  
- void **set_show_edit_card([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
设置此公告实例是否显示引导群员修改名片的选项  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_show_edit_card()**  
  
获取此公告实例是否显示引导群员修改名片的选项  
  
---  
  
- void **set_show_popup([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
设置此公告实例是否使用弹窗来展示  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_show_popup()**  
  
获取此公告实例是否使用弹窗来展示  
  
---  
  
- void **set_require_confirm([bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) enabled)**  
  
设置此公告实例是否需要群成员进行确认  
  
---  
  
- [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) **is_require_confirm()**  
  
获取此公告实例是否需要群成员进行确认  
  
---  
  
- void **set_image_url([String](https://docs.godotengine.org/en/latest/classes/class_string.html) img_url)**  
  
设置此公告实例将包含的图像的url链接  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_url()**  
  
获取此公告实例将包含的图像的url链接  
  
---  
  
- void **set_image_path([String](https://docs.godotengine.org/en/latest/classes/class_string.html) img_path)**  
  
设置此公告实例将包含的图像的本地绝对路径  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_path()**  
  
获取此公告实例将包含的图像的本地绝对路径  
  
---  
  
- void **set_image_base64([String](https://docs.godotengine.org/en/latest/classes/class_string.html) img_base64)**  
  
设置此公告实例将包含的图像的Base64编码  
  
---  
  
- [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_base64()**  
  
获取此公告实例将包含的图像的Base64编码  
  
---  
  

