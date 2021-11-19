extends Plugin #默认继承插件类，请勿随意改动


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("group_manage_bot","群管系统", "Xwdit", "1.0", "让机器人具备群聊管理的能力" )


#将在此插件被完全加载后执行的操作
func _on_load():
	register_message_event(MessageEvent.Type.GROUP,"_command")


#将在此插件即将被卸载时执行的操作
func _on_unload():
	unregister_message_event(MessageEvent.Type.GROUP)


#接收到群消息事件
func _command(event:GroupMessageEvent):
	var msg_chain:MessageChain = event.get_message_chain()
	var text:String = msg_chain.get_message_text([Message.Type.TEXT])
	var at_msg:Array = msg_chain.get_message_array([Message.Type.AT])
	var g_id:int = event.get_group().get_id()
	
	if text.begins_with("禁言"): #判断聊天前缀
		if event.get_sender().get_permission() == int(GroupMember.Permission.MEMBER):
			event.reply(TextMessage.init("您不是管理员或群主，无法执行此操作!"),true)
			return
		var sec:int = text.to_int()
		for m in at_msg:
			var _at:AtMessage = m
			var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
			var result:BotRequestResult = await _member.mute(sec)
			if result.get_status_code() == int(BotRequestResult.StatusCode.SUCCESS):
				event.reply(TextMessage.init("成功执行禁言操作，时长"+str(sec)+"秒"),true)
			else:
				event.reply(TextMessage.init("禁言操作执行失败，请检查机器人权限是否为管理员"),true)
	elif text.begins_with("解除禁言"): #判断聊天前缀
		if event.get_sender().get_permission() == int(GroupMember.Permission.MEMBER):
			event.reply(TextMessage.init("您不是管理员或群主，无法执行此操作!"),true)
			return
		for m in at_msg:
			var _at:AtMessage = m
			var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
			var result:BotRequestResult = await _member.unmute()
			if result.get_status_code() == int(BotRequestResult.StatusCode.SUCCESS):
				event.reply(TextMessage.init("成功执行解除禁言操作"),true)
			else:
				event.reply(TextMessage.init("解除禁言操作执行失败，请检查机器人权限是否为管理员"),true)
	elif text.begins_with("修改名片"): #判断聊天前缀
		if event.get_sender().get_permission() == int(GroupMember.Permission.MEMBER):
			event.reply(TextMessage.init("您不是管理员或群主，无法执行此操作!"),true)
			return
		var new_name = text.substr(4)
		for m in at_msg:
			var _at:AtMessage = m
			var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
			var result:BotRequestResult = await _member.change_name(new_name)
			if result.get_status_code() == int(BotRequestResult.StatusCode.SUCCESS):
				event.reply(TextMessage.init("成功将群名片修改为:"+new_name),true)
			else:
				event.reply(TextMessage.init("名片修改操作执行失败，请检查机器人权限是否为管理员"),true)
	elif text.begins_with("修改头衔"): #判断聊天前缀
		if event.get_sender().get_permission() == int(GroupMember.Permission.MEMBER):
			event.reply(TextMessage.init("您不是管理员或群主，无法执行此操作!"),true)
			return
		var new_name = text.substr(4)
		for m in at_msg:
			var _at:AtMessage = m
			var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
			var result:BotRequestResult = await _member.change_special_title(new_name)
			if result.get_status_code() == int(BotRequestResult.StatusCode.SUCCESS):
				event.reply(TextMessage.init("成功将专属头衔修改为:"+new_name),true)
			else:
				event.reply(TextMessage.init("头衔修改操作执行失败，请检查机器人是否为群主权限"),true)
	elif text.begins_with("踢人"): #判断聊天前缀
		if event.get_sender().get_permission() == int(GroupMember.Permission.MEMBER):
			event.reply(TextMessage.init("您不是管理员或群主，无法执行此操作!"),true)
			return
		for m in at_msg:
			var _at:AtMessage = m
			var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
			var result:BotRequestResult = await _member.kick("您已被移出群聊")
			if result.get_status_code() == int(BotRequestResult.StatusCode.SUCCESS):
				event.reply(TextMessage.init("成功执行踢人操作"),true)
			else:
				event.reply(TextMessage.init("踢人操作执行失败，请检查机器人是否为群主权限"),true)
