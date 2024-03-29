[font_size=25][b][color=#70bafa]类:[/color] Utils[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:CoreAPI]CoreAPI[/url]


[b]RainyBot的实用工具类，其中提供了各种类型的便捷功能[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=godot:String]String[/url][/color] ￿get_formated_time￿ [color=gray]([/color] [color=gray])[/color]

	获取以HH:mm:ss为格式的当前时间文本


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=godot:String]String[/url][/color] ￿get_formated_num￿ [color=gray]([/color] [color=#70bafa][url=godot:float]float[/url][/color] num [color=gray])[/color]

	返回传入数字的字符串，并在传入的数字小于10时在字符串前方加入一个"0"


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:HttpRequestResult]HttpRequestResult[/url][/color] ￿send_http_get_request￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] url, [color=#70bafa][url=godot:PackedStringArray]PackedStringArray[/url][/color] headers[color=gray] = [][/color], [color=#70bafa][url=godot:int]int[/url][/color] timeout[color=gray] = 20[/color], [color=#70bafa][url=godot:bool]bool[/url][/color] accept_gzip[color=gray] = true[/color] [color=gray])[/color]

	通过await调用时，将发送一个Http Get请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult 
	
	需要的参数从左到右分别为 请求URL,请求headers(可选，默认为空数组),超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:HttpRequestResult]HttpRequestResult[/url][/color] ￿send_http_post_request￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] url, [color=#70bafa][url=godot:String]String[/url][/color] request_data[color=gray] = ""[/color], [color=#70bafa][url=godot:PackedStringArray]PackedStringArray[/url][/color] headers[color=gray] = [][/color], [color=#70bafa][url=godot:int]int[/url][/color] timeout[color=gray] = 20[/color], [color=#70bafa][url=godot:bool]bool[/url][/color] accept_gzip[color=gray] = true[/color] [color=gray])[/color]

	通过await调用时，将发送一个Http Post请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult 
	
	需要的参数从左到右分别为 请求URL，请求内容(可为字典/数组/字符串/字节数组)，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:HttpRequestResult]HttpRequestResult[/url][/color] ￿send_http_put_request￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] url, [color=#70bafa][url=godot:String]String[/url][/color] request_data[color=gray] = ""[/color], [color=#70bafa][url=godot:PackedStringArray]PackedStringArray[/url][/color] headers[color=gray] = [][/color], [color=#70bafa][url=godot:int]int[/url][/color] timeout[color=gray] = 20[/color], [color=#70bafa][url=godot:bool]bool[/url][/color] accept_gzip[color=gray] = true[/color] [color=gray])[/color]

	通过await调用时，将发送一个Http Put请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult 
	
	需要的参数从左到右分别为 请求URL，请求内容(可为字典/数组/字符串/字节数组)，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒),是否允许gzip压缩(可选，默认为true)


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=godot:Resource]Resource[/url][/color] ￿load_threaded￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] path, [color=#70bafa][url=godot:String]String[/url][/color] type_hint[color=gray] = ""[/color], [color=#70bafa][url=godot:bool]bool[/url][/color] use_sub_threads[color=gray] = false[/color] [color=gray])[/color]

	通过await调用时，将尝试异步加载指定路径的资源，等待其加载完毕/出错，并返回加载完毕的资源或null 
	
	需要的参数从左到右分别为 资源路径，资源类型提示(可选，为空时将自动判断类型)，是否使用子线程(可选，启用时将加快加载速度，但可能会影响主线程的性能)


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:VoiceMessage]VoiceMessage[/url][/color] ￿convert_to_voice￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] path [color=gray])[/color]

	通过await调用时，将尝试将指定路径的音频转换为可直接发送的VoiceMessage实例，等待其转换完毕/出错，并返回转换完毕的实例或null 
	
	请确保您至少在控制台配置文件中指定了ffmpeg可执行文件的路径，以确保格式转换可以顺利进行，否则将会转换失败 
	
	您还可以根据需求在控制台配置文件中指定silk-encoder可执行文件的路径，以启用高质量语音转码；启用高质量转码后，将会略微提高转换所需的时间，以及缓存文件所占用的空间


