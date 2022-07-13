#RainyBot复读机示例插件
#更多帮助文档，示例插件及API请访问 https://docs.rainybot.dev 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


var group_info:Dictionary = {} #定义一个插件范围的全局字典，用于储存不同群的统计数据


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("repeater","复读机", "Xwdit","1.0","自动复读连续重复三次的群消息")


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册群消息事件，绑定到自定义的"_receive_group_event"函数，并将优先级设为10(低优先级)
	register_event(GroupMessageEvent,_receive_group_event,10)


#上方注册的群消息事件将触发此函数，事件所绑定的函数需要接收一个对应事件实例的参数
func _receive_group_event(event:GroupMessageEvent):
	var g_id = event.get_group_id() #获取消息事件发生的群号(仅限群消息事件)
	var text = event.get_message_text(TextMessage) #获取消息事件中的所有文本消息组合而成的文本
	
	if group_info.has(g_id): #检测群状态字典中是否已存在此群相关的数据
		if group_info[g_id].msg == text: #判断此群数据中上一次群消息的文本是否与这一次相等
			group_info[g_id].count += 1 #为此群数据中的消息连续出现次数+1
			if group_info[g_id].count >= 3: #判断此群的消息连续出现次数是否大于等于3
				event.reply(text) #将此群数据中储存的上次消息内容发送到触发此事件的位置(即此群)
				group_info.erase(g_id) #清除此群的统计数据
				
		else: #本次消息的文本与上一次不相等
			_reset_info(g_id,text) #调用"_reset_info"函数来重新初始化此群的统计数据

	else: #群状态字典中不存在此群的统计数据
		_reset_info(g_id,text) #调用"_reset_info"函数来初始化此群的统计数据


#此函数用于初始化指定群的统计数据，需要传入群号和用于第一次统计的群消息文本
func _reset_info(g_id,text):
	group_info[g_id] = {"msg":null,"count":0} #将群统计数据设为上次消息为null，重复次数为0的初始字典
	group_info[g_id].msg = text #将群统计数据的上次消息设定为指定文本
	group_info[g_id].count = 1 #将消息的出现次数设置为1
