#RainyBot随机动漫图片/音乐示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("anime_bot","二次元机器人", "Xwdit","1.0","各种二次元功能~")


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册关键词 "二次元图片"，绑定到"anime_img"函数，不使用过滤函数且不指定失败消息，采用包含模式进行匹配
	register_keyword("二次元图片",anime_img,"","",MatchMode.INCLUDE)
	
	#注册关键词 "二次元音乐"，绑定到"anime_music"函数，不使用过滤函数且不指定失败消息，采用包含模式进行匹配
	register_keyword("二次元音乐",anime_music,"","",MatchMode.INCLUDE)
	
	#注册群消息事件与好友消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event([GroupMessageEvent,FriendMessageEvent],"trigger_keyword")


#关键词 "二次元图片" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func anime_img(keyword,arg,event):
	#发送Http Get请求到特定的随机二次元图片API，并等待返回结果(返回结果为一个HttpRequestResult类的实例)
	var _result:HttpRequestResult = await Utils.send_http_get_request("https://www.dmoe.cc/random.php?return=json")
	
	var _dic = _result.get_as_dic() #从返回结果中解析并获取字典
	if !_dic.is_empty(): #判断是否成功获取到包含数据的字典(不为空)
		var reply:String = _dic["imgurl"] #从字典中获取图片链接
		var msg = ImageMessage.init_url(reply) #根据图片链接构建一个图片消息ImageMessage类实例
		#将图片消息发送回触发此关键词的位置，并引用原消息(第二个参数)；且如果来自群聊，则AT原消息发送者(第三个参数)
		event.reply(msg,true,true)
			

#关键词 "二次元音乐" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例		
func anime_music(keyword,arg,event):
	#发送Http Get请求到特定的随机二次元音乐API，并等待返回结果(返回结果为一个HttpRequestResult类的实例)
	var _result:HttpRequestResult = await Utils.send_http_get_request("https://api.paugram.com/acgm/")
	
	var _dic = _result.get_as_dic() #从返回结果中解析并获取字典
	if !_dic.is_empty(): #判断是否成功获取到包含数据的字典(不为空)
		#根据音乐数据构建一个音乐分享MusicShareMessage类实例
		var msg = MusicShareMessage.init(
			"NeteaseCloudMusic", #来源
			_dic["title"], #标题
			_dic["artist"], #作者
			"https://y.music.163.com/m/song?id="+str(_dic["id"]), #跳转地址
			_dic["cover"], #封面图片地址
			_dic["link"], #音乐文件地址
			_dic["album"] #专辑名
		)
		event.reply(msg) #将音乐分享消息发送回触发此关键词的位置
