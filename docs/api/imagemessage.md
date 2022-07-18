# 类: ImageMessage

[(返回目录)](./)

**继承自:** [Message](message.md)

RainyBot的图像消息类，其实例记录了与一个图像消息相关的各类数据

## 方法

* static [ImageMessage](imagemessage.md) **init (** [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) image **)**

基于图像实例缓存并手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_gif (** [GifImage](gifimage.md) gif\_image **)**

基于Gif动图实例缓存并手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_id (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_id **)**

基于指定的图像ID来手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_url (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_url **)**

基于指定的URL地址来手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_path (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_path **)**

基于指定的本地文件路径来手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_base64 (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_base64 **)**

基于指定的BASE64编码来手动构造一个ImageMessage类的实例

***

* static [ImageMessage](imagemessage.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_image\_id ( )**

获取此实例对应的图像的ID

***

* void **set\_image\_id (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_id **)**

设置此实例对应的图像的ID

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_image\_url ( )**

获取此实例对应的图像的URL链接

***

* void **set\_image\_url (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_url **)**

设置此实例对应的图像的URL链接

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_image\_path ( )**

获取此实例对应的图像的本地路径

***

* void **set\_image\_path (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_path **)**

设置此实例对应的图像的本地路径

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_image\_base64 ( )**

获取此实例对应的图像的Base64编码

***

* void **set\_image\_base64 (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) image\_base64 **)**

设置此实例对应的图像的Base64编码

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

将此实例获取为字符串的形式

***
