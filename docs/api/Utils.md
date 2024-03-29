# 类: Utils  
[(返回目录)](README.md)  
  
**继承自:** [CoreAPI](CoreAPI.md)  
  
RainyBot的实用工具类，其中提供了各种类型的便捷功能  
  
## 方法 
  
- static [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_formated_time ( )**  
  
获取以HH:mm:ss为格式的当前时间文本  
  
---  
  
- static [String](https://docs.godotengine.org/en/latest/classes/class_string.html) **get_formated_num (** [float](https://docs.godotengine.org/en/latest/classes/class_float.html) num **)**  
  
返回传入数字的字符串，并在传入的数字小于10时在字符串前方加入一个"0"  
  
---  
  
- static [HttpRequestResult](HttpRequestResult.md) **send_http_get_request (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) url, [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class_packedstringarray.html) headers=[], [int](https://docs.godotengine.org/en/latest/classes/class_int.html) timeout=20, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) accept_gzip=true **)**  
  
通过await调用时，将发送一个Http Get请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult   
  
需要的参数从左到右分别为 请求URL,请求headers(可选，默认为空数组),超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)  
  
---  
  
- static [HttpRequestResult](HttpRequestResult.md) **send_http_post_request (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) url, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) request_data="", [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class_packedstringarray.html) headers=[], [int](https://docs.godotengine.org/en/latest/classes/class_int.html) timeout=20, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) accept_gzip=true **)**  
  
通过await调用时，将发送一个Http Post请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult   
  
需要的参数从左到右分别为 请求URL，请求内容(可为字典/数组/字符串/字节数组)，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)  
  
---  
  
- static [HttpRequestResult](HttpRequestResult.md) **send_http_put_request (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) url, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) request_data="", [PackedStringArray](https://docs.godotengine.org/en/latest/classes/class_packedstringarray.html) headers=[], [int](https://docs.godotengine.org/en/latest/classes/class_int.html) timeout=20, [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) accept_gzip=true **)**  
  
通过await调用时，将发送一个Http Put请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult   
  
需要的参数从左到右分别为 请求URL，请求内容(可为字典/数组/字符串/字节数组)，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)  
  
---  
  
- static [Resource](https://docs.godotengine.org/en/latest/classes/class_resource.html) **load_threaded (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) path, [String](https://docs.godotengine.org/en/latest/classes/class_string.html) type_hint="", [bool](https://docs.godotengine.org/en/latest/classes/class_bool.html) use_sub_threads=false **)**  
  
通过await调用时，将尝试异步加载指定路径的资源，等待其加载完毕/出错，并返回加载完毕的资源或null   
  
需要的参数从左到右分别为 资源路径，资源类型提示(可选，为空时将自动判断类型)，是否使用子线程(可选，启用时将加快加载速度，但可能会影响主线程的性能)  
  
---  
  
- static [VoiceMessage](VoiceMessage.md) **convert_to_voice (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) path **)**  
  
通过await调用时，将尝试将指定路径的音频转换为可直接发送的VoiceMessage实例，等待其转换完毕/出错，并返回转换完毕的实例或null   
  
请确保您至少在控制台配置文件中指定了ffmpeg可执行文件的路径，以确保格式转换可以顺利进行，否则将会转换失败   
  
您还可以根据需求在控制台配置文件中指定silk-encoder可执行文件的路径，以启用高质量语音转码；启用高质量转码后，将会略微提高转换所需的时间，以及缓存文件所占用的空间  
  
---  
  

