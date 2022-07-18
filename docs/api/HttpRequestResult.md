# 类: HttpRequestResult

[(返回目录)](./)

**继承自:** [CoreAPI](CoreAPI.md)

RainyBot的Http请求结果类，可从其中快速获取某次Http请求的结果数据

## 方法

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_request\_url ( )**

获取此请求的URL字符串

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_request\_data ( )**

获取此请求的请求数据字符串

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_request\_data\_dic ( )**

将此请求的请求数据解析为字典并返回

***

* [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class\_packedstringarray.html) **get\_request\_headers ( )**

获取此请求的headers数组

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_result\_status ( )**

获取此请求的结果状态

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_response\_code ( )**

获取此请求的结果响应码

***

* [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class\_packedstringarray.html) **get\_headers ( )**

获取此请求的结果的headers

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_as\_text ( )**

尝试将此请求的结果解析为字符串并返回

***

* [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) **get\_as\_dic ( )**

尝试将此请求的结果解析为字典并返回

***

* [PackedByteArray](https://docs.godotengine.org/en/latest/classes/class\_packedbytearray.html) **get\_as\_byte ( )**

直接返回此请求的结果的二进制数据数组

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_image ( )**

尝试自动判断此请求的结果的图像格式，解析并返回其图像实例，支持的图像格式为: `png,jpg,bmp,tga,webp`

若图像的格式已知，建议使用`get_as_[格式]_image()`系列函数以获得更好的性能 (如\[method get\_as\_png\_image]函数)

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_png\_image ( )**

尝试将此请求的结果作为png格式解析并返回其图像实例

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_jpg\_image ( )**

尝试将此请求的结果作为jpg格式解析并返回其图像实例

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_bmp\_image ( )**

尝试将此请求的结果作为bmp格式解析并返回其图像实例

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_tga\_image ( )**

尝试将此请求的结果作为tga格式解析并返回其图像实例

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_as\_webp\_image ( )**

尝试将此请求的结果作为webp格式解析并返回其图像实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **save\_to\_file (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) path **)**

尝试将此请求的结果的二进制数据保存到指定路径的文件

***
