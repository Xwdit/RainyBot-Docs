#RainyBot聊天机器人示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("chatbot","闲聊机器人", "Xwdit","1.0","让机器人具备聊天的能力")


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册关键词 "萌萌酱" 与 "{@}"，绑定到"_chat"函数，不使用动态变量字典，采用包含模式进行匹配
	#关键词中的"{@}"代表AT了机器人，可以直接使用，也可以作为附加条件添加到关键词的前方，如:"{@}你好"
	register_keyword(["萌萌酱","{@}"],_chat,{},MatchMode.INCLUDE)

	#注册群消息事件与好友消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词，并将优先级设置为1
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event([GroupMessageEvent,FriendMessageEvent],["respond_context","trigger_keyword"],1)


#关键词 "萌萌酱" 与 "{@}" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _chat(keyword,parsed,arg,event):
	match arg: #匹配关键词参数
		"骂我":
			#发送Http Get请求到特定的随机骂人语录API，并等待返回结果(返回结果为一个HttpRequestResult类的实例)
			var _result:HttpRequestResult = await Utils.send_http_get_request("https://api.shadiao.app/nmsl?level=min")
			
			var _dic = _result.get_as_dic() #从返回结果中解析并获取字典
			if !_dic.is_empty(): #判断是否成功获取到包含数据的字典(不为空)
				#将获取到的文本发送回触发此关键词的位置，并引用原消息(第二个参数)；且如果来自群聊，则AT原消息发送者(第三个参数)
				event.reply(_dic.data.text,true,true)
		
		"夸我":
			#发送Http Get请求到特定的随机夸奖语录API，并等待返回结果(返回结果为一个HttpRequestResult类的实例)
			var _result:HttpRequestResult = await Utils.send_http_get_request("https://api.shadiao.app/chp")
			
			var _dic = _result.get_as_dic() #从返回结果中解析并获取字典
			if !_dic.is_empty(): #判断是否成功获取到包含数据的字典(不为空)
				#将获取到的文本发送回触发此关键词的位置，并引用原消息(第二个参数)；且如果来自群聊，则AT原消息发送者(第三个参数)
				event.reply(_dic.data.text,true,true)
		
		"陪我聊天": #用于触发连续对话
			#将询问消息发送回触发此关键词的位置，如果来自群聊，则AT原消息发送者(第三个参数)
			event.reply("好呀，你想和我聊什么呢？",false,true)
			
			while true: #无限循环直到触发退出条件
				var _ev = await wait_context(event) #等待与当前事件相同的发送者，在相同的位置触发的新的消息事件(等待上下文响应)
				if _ev == null: #上下文响应超时将返回null，默认超时事件为20秒
					#将超时消息发送回触发此关键词的位置，如果来自群聊，则AT原消息发送者(第三个参数)
					event.reply("既然你一直不回复的话，那我就先走了哦~",false,true)
					break #退出无限循环
				
				var _text = _ev.get_message_text(TextMessage) #从新的消息事件中获取文本消息
				if _text.find("不聊") != -1: #如果文本消息中包含"不聊"则退出无限循环
					#将退出消息发送回触发此关键词的位置，如果来自群聊，则AT原消息发送者(第三个参数)
					event.reply("好吧，那就不聊了，拜拜~",false,true)
					break #退出无限循环
				await chat(_text,_ev) #调用chat函数来发送文本至聊天API，并等待其执行完毕
				
		#不满足以上情况时，作为常规聊天处理
		_:
			chat(arg,event) #调用chat函数来发送文本至聊天API
				

#用于将指定文本发送至聊天API并将回复发送至指定的消息事件
func chat(arg,event):
	#如果关键词参数为空，则替换为聊天API中机器人的原名称，相当于问候机器人
	if arg.replace(" ","").length() < 1:
		arg = "菲菲"
				
	arg = arg.uri_encode() #把关键词参数转换为对Http请求友好的格式，防止传输过程出现问题
			
	#发送Http Get请求到特定的聊天API，并等待返回结果(返回结果为一个HttpRequestResult类的实例)
	var _result:HttpRequestResult = await Utils.send_http_get_request("http://api.qingyunke.com/api.php?key=free&appid=0&msg="+arg)
			
	var _dic = _result.get_as_dic() #从返回结果中解析并获取字典
	if !_dic.is_empty(): #判断是否成功获取到包含数据的字典(不为空)
		var reply:String = _dic["content"] #获取聊天API所返回的文本内容
		#将返回文本中的原机器人名称替换为自定义的名称，并将换行标签替换为有效的换行符
		reply = reply.replace("菲菲","萌萌酱").replace("{br}","\n")
		#将获取到的文本发送回触发此关键词的位置，并引用原消息(第二个参数)；且如果来自群聊，则AT原消息发送者(第三个参数)
		event.reply(reply,true,true)
