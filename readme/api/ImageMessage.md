# 类: ImageMessage  
[(返回目录)](README.md)  
  
**继承自:** [Message](Message.md)  
  
RainyBot的图像消息类，其实例记录了与一个图像消息相关的各类数据  
  
## 方法 
  
[ImageMessage](ImageMessage.md) **init([Image](https://docs.godotengine.org/en/latest/classes/class_image.html) image)**  
  
基于图像实例缓存并手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_gif([GifImage](GifImage.md) gif_image)**  
  
基于Gif动图实例缓存并手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_id([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_id)**  
  
基于指定的图像ID来手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_url([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_url)**  
  
基于指定的URL地址来手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_path([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_path)**  
  
基于指定的本地文件路径来手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_base64([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_base64)**  
  
基于指定的BASE64编码来手动构造一个ImageMessage类的实例  
  
---  
  
[ImageMessage](ImageMessage.md) **init_meta([Dictionary](https://docs.godotengine.org/en/latest/classes/class_dictionary.html) dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_id()**  
  
获取此实例对应的图像的ID  
  
---  
  
void **set_image_id([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_id)**  
  
设置此实例对应的图像的ID  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_url()**  
  
获取此实例对应的图像的URL链接  
  
---  
  
void **set_image_url([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_url)**  
  
设置此实例对应的图像的URL链接  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_path()**  
  
获取此实例对应的图像的本地路径  
  
---  
  
void **set_image_path([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_path)**  
  
设置此实例对应的图像的本地路径  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_image_base64()**  
  
获取此实例对应的图像的Base64编码  
  
---  
  
void **set_image_base64([String](https://docs.godotengine.org/en/latest/classes/class_string.html) image_base64)**  
  
设置此实例对应的图像的Base64编码  
  
---  
  
[String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_as_text()**  
  
将此实例获取为字符串的形式  
  
---  
  

