#RainyBot赌轮盘示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


var state = {} #定义一个插件范围的全局字典，用于储存不同群的统计数据


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("roulette","赌轮盘", "stvil","1.0","俄罗斯轮盘赌，直接说“赌轮盘”就行。")


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册群消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event(GroupMessageEvent,"trigger_keyword")
	
	#注册关键词 "赌轮盘"，绑定到"_game"函数，不使用过滤函数且不指定失败消息，采用包含模式进行匹配
	register_keyword("赌轮盘",_game,"","",MatchMode.INCLUDE)


#关键词 "赌轮盘" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _game(keyword,arg,event):
	var g_id:int = event.get_group_id() #获取消息事件发生的群号(仅限群消息事件)
	var die:String = "你死了，珍爱生命远离赌博，新的一轮开始" #定义挑战失败时发送的文本
	var live:String = "你活了,子弹还剩%s发" #定义挑战成功时发送的文本，%s为占位符

	if !state.has(g_id): #判断状态字典中是否不存在当前群号的数据
		state[g_id] = 0 #初始化当前群游戏次数为0
		Console.print_text("赌轮盘初始化完成: "+str(g_id)) #在控制台打印初始化完成的调试消息
	
	#从0-5之间随机一个整数，判断其是否大于等于5 - state[g_id](当前群已进行的游戏次数)
	if (randi() % 6) >= 5 - state[g_id]: #满足条件则判定为挑战失败
		state[g_id] = 0 #初始化当前群游戏次数为0
		
		Console.print_text(die) #在控制台打印挑战失败的调试消息
		#将失败消息发送回触发此关键词的位置，并AT原消息发送者(第三个参数)
		event.reply(die,false,true) 
	
	else: #当局游戏挑战成功
		#替换填充挑战成功文本中的%s为5 - state[g_id](当前群已进行的游戏次数)
		var _text:String = live % [str(5-state[g_id])]
		state[g_id] += 1 #将当前群已进行的游戏次数+1
		
		Console.print_text(_text) #在控制台打印挑战成功的调试消息
		#将成功消息发送回触发此关键词的位置，并AT原消息发送者(第三个参数)
		event.reply(_text,false,true)
