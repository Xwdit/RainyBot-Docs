extends Plugin #默认继承插件类，请勿随意改动


var group_info = {}


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("repeater","复读机", "Xwdit","1.0","这是一个复读机插件")


#将在此插件被完全加载后执行的操作
func _on_load():
	#开始监听群消息事件，并将群消息事件绑定到_receive_group_event函数
	register_event(GroupMessageEvent,_receive_group_event)


func _receive_group_event(event:GroupMessageEvent):
	var g_id = event.get_group().get_id()
	var text = event.get_message_text(TextMessage)
	if group_info.has(g_id):
		if group_info[g_id].msg == text:
			group_info[g_id].count += 1
			if group_info[g_id].count == 3:
				event.reply(text)
				group_info.erase(g_id)
		else:
			group_info[g_id] = {"msg":null,"count":0}
			group_info[g_id].msg = text
			group_info[g_id].count = 1
	else:
		group_info[g_id] = {"msg":null,"count":0}
		group_info[g_id].msg = text
		group_info[g_id].count = 1
