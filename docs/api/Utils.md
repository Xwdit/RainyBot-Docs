# 类: Utils

[(返回目录)](./)

**继承自:** [CoreAPI](CoreAPI.md)

RainyBot的实用工具类，其中提供了各种类型的便捷功能

## 方法

* static [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_formated\_time ( )**

获取以HH:mm:ss为格式的当前时间文本

***

* static [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_beautifuler\_num (** [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) num **)**

返回传入数字的字符串，并在传入的数字小于10时在字符串前方加入一个"0"

***

* static [HttpRequestResult](HttpRequestResult.md) **send\_http\_get\_request (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) url, [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) timeout=20 **)**

通过await调用时，将发送一个Http Get请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult

需要的参数从左到右分别为 请求URL,超时时间(可选，默认为20秒)

***

* static [HttpRequestResult](HttpRequestResult.md) **send\_http\_post\_request (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) url, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) request\_data, [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class\_packedstringarray.html) headers="", [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) timeout=20 **)**

通过await调用时，将发送一个Http Post请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult

需要的参数从左到右分别为 请求URL，请求内容，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒)

***

* static [Resource](https://docs.godotengine.org/en/latest/classes/class\_resource.html) **load\_threaded (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) path, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) type\_hint="", [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) use\_sub\_threads=false **)**

通过await调用时，将尝试异步加载指定路径的资源，等待其加载完毕/出错，并返回加载完毕的资源或null

需要的参数从左到右分别为 资源路径，资源类型提示(可选，为空时将自动判断类型)，是否使用子线程(可选，启用时将加快加载速度，但可能会影响主线程的性能)

***
