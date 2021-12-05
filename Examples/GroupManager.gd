extends Plugin #默认继承插件类，请勿随意改动


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("group_manage_bot","群管系统", "Xwdit", "1.0", "让机器人具备群聊管理的能力" )


#将在此插件被完全加载后执行的操作
func _on_load():
	var _rep = "您不是管理员或群主，无法执行此操作!"
	register_event(GroupMessageEvent,"trigger_keyword")
	register_keyword("禁言",mute,check_perm,_rep)
	register_keyword("解除禁言",unmute,check_perm,_rep)
	register_keyword("更改名片",change_name,check_perm,_rep)
	register_keyword("更改称号",change_st,check_perm,_rep)
	register_keyword("踢人",change_name,check_perm,_rep)
		

func check_perm(event):
	return !event.get_sender().is_permission(GroupMember.Permission.MEMBER)


func mute(keyword,cmd_arg,event):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group_id()
	var sec:int = cmd_arg.to_int()
	for m in at_msg:
		var _at:AtMessage = m
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.mute(sec)
		if result.is_success():
			event.reply("成功执行禁言操作，时长"+str(sec)+"秒",true)
		else:
			event.reply("禁言操作执行失败，请检查机器人权限是否为管理员",true)


func unmute(keyword,cmd_arg,event):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group_id()
	for m in at_msg:
		var _at:AtMessage = m
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.unmute()
		if result.is_success():
			event.reply("成功执行解除禁言操作",true)
		else:
			event.reply("解除禁言操作执行失败，请检查机器人权限是否为管理员",true)


func change_name(keyword,cmd_arg,event):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.change_name(cmd_arg)
		if result.is_success():
			event.reply("成功将群名片修改为:"+cmd_arg,true)
		else:
			event.reply("名片修改操作执行失败，请检查机器人权限是否为管理员",true)
				

func change_st(keyword,cmd_arg,event):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.change_special_title(cmd_arg)
		if result.is_success():
			event.reply("成功将专属头衔修改为:"+cmd_arg,true)
		else:
			event.reply("头衔修改操作执行失败，请检查机器人是否为群主权限",true)


func kick(keyword,cmd_arg,event):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.kick("您已被移出群聊")
		if result.is_success():
			event.reply("成功执行踢人操作",true)
		else:
			event.reply("踢人操作执行失败，请检查机器人是否为群主权限",true)
	
