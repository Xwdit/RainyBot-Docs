extends Plugin #默认继承插件类，请勿随意改动，按住Ctrl并点击可打开其API页面


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info({
		"id":"recallback", #插件唯一ID,不能同时加载两个具有相同ID的插件
		"name":"防撤回", #插件的显示名称
		"author":"Salieri", #插件的作者
		"version":"1.0", #插件的版本号
		"description":"在消息被撤回时进行转发" #插件的描述
	})


#将在此插件被完全加载后执行的操作
func _on_load():
	
	#在指令数据库中注册一个指令，用户可调用该指令执行操作
	#参数从左到右分别为指令名称(需唯一)，指令是否必需参数，指令用法介绍(数组的每个元素显示为一行)，指令来源(如插件名)
	receive_message_events(true) #开始接收聊天消息事件
	receive_bot_events(true) #开始接收Mirai各类事件(如加群/退群等)


#将在此插件即将被卸载时执行的操作
func _on_unload():
	receive_message_events(false) #停止接收聊天消息事件
	receive_bot_events(false) #停止接收Mirai框架事件


#接收Mirai框架推送的事件，并进行处理。将EventName替换为要接受的事件名即可
#data为事件携带的对应数据
#各类事件介绍请参见: https://github.com/project-mirai/mirai-api-http/blob/master/docs/adapter/WebsocketAdapter.md
func _event_GroupRecallEvent(data:Dictionary):
	var msgid = data["messageId"]
	var groupid = data["group"]["id"]
	var membername = data["operator"]["memberName"]
	var content = {"id":msgid}
	
	#检查是否成功连接至Mirai框架
	if !is_connected_to_mirai():
		return
	
	#向Mirai发送操作指令，并储存该函数返回的指令实例用于稍后接收指令回调
	#若指令发送失败则此函数将返回null，请注意使用函数 is_instance_valid(指令实例) 来进行判断
	#参数从左到右分别为指令名称，副指令名称(可选)，指令调用参数字典(可选)
	#各类指令介绍请参见: https://github.com/project-mirai/mirai-api-http/blob/master/docs/adapter/WebsocketAdapter.md
	var cmd:MiraiCommandInstance = send_mirai_command("messageFromId",null,content)
	
	yield(cmd,"request_finished") #等待指令实例接收指令回调
	var messagechain = cmd.get_result()["data"]["messageChain"]
	cmd.finish() #！重要！在接收回调完毕后清除指令实例来释放内存并防止出现问题
	var message_tip = {
					"target":groupid,
					"messageChain":[{"type": "Plain", "text":membername + "撤回了一条消息："}]
				}
	var message = {
					"target":groupid,#目标群号
					"messageChain":messagechain
				}
	send_mirai_command("sendGroupMessage",null,message_tip)
	send_mirai_command("sendGroupMessage",null,message)