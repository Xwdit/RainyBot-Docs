extends Plugin #默认继承插件类，请勿随意改动


var state = {}


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("roulette","赌轮盘", "stvil","1.0","俄罗斯轮盘赌，直接说“赌轮盘”就行。")


#将在此插件被完全加载后执行的操作
func _on_load():
	register_event(GroupMessageEvent,"trigger_keyword")
	register_keyword("赌轮盘",_game)


#接收到群消息事件
func _game(keyword,arg,event):
	var g_id:int = event.get_group_id()#获取群号
	var die:String = "你死了，珍爱生命远离赌博，新的一轮开始"
	var live:String = "你活了,子弹还剩%s发"

	if !state.has(g_id):
		state[g_id] = 0
		Console.print_text("赌轮盘初始化完成: "+str(g_id))
	
	if (randi() % 6) >= 5 - state[g_id]:
		state[g_id] = 0
		Console.print_text(die)
		event.reply(die,false,true)
	else:
		var _text:String = live % [str(5-state[g_id])]
		state[g_id] += 1
		Console.print_text(_text)
		event.reply(_text,false,true)
