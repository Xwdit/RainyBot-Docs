extends Plugin #默认继承插件类，请勿随意改动


var func_dic = {
	"禁言":mute,
	"解除禁言":unmute,
	"更改名片":change_name,
	"更改称号":change_st,
	"踢人":kick
	}


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("group_manage_bot","群管系统", "Xwdit", "1.0", "让机器人具备群聊管理的能力" )


#将在此插件被完全加载后执行的操作
func _on_load():
	register_event(GroupMessageEvent,_command)


#接收到群消息事件
func _command(event:GroupMessageEvent):
	var text:String = event.get_message_text(TextMessage)
	for cmd in func_dic:
		if text.begins_with(cmd):
			if !check_perm(event):
				return
			func_dic[cmd].call(event,text.substr(cmd.length()))
			return false
		

func check_perm(event):
	if event.get_sender().is_permission(GroupMember.Permission.MEMBER):
		event.reply("您不是管理员或群主，无法执行此操作!",true)
		return false
	else:
		return true


func mute(event,cmd_arg):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group().get_id()
	var sec:int = cmd_arg.to_int()
	for m in at_msg:
		var _at:AtMessage = m
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.mute(sec)
		if result.is_success():
			event.reply("成功执行禁言操作，时长"+str(sec)+"秒",true)
		else:
			event.reply("禁言操作执行失败，请检查机器人权限是否为管理员",true)


func unmute(event,cmd_arg):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group().get_id()
	for m in at_msg:
		var _at:AtMessage = m
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.unmute()
		if result.is_success():
			event.reply("成功执行解除禁言操作",true)
		else:
			event.reply("解除禁言操作执行失败，请检查机器人权限是否为管理员",true)


func change_name(event,cmd_arg):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group().get_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.change_name(cmd_arg)
		if result.is_success():
			event.reply("成功将群名片修改为:"+cmd_arg,true)
		else:
			event.reply("名片修改操作执行失败，请检查机器人权限是否为管理员",true)
				

func change_st(event,cmd_arg):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group().get_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.change_special_title(cmd_arg)
		if result.is_success():
			event.reply("成功将专属头衔修改为:"+cmd_arg,true)
		else:
			event.reply("头衔修改操作执行失败，请检查机器人是否为群主权限",true)


func kick(event,cmd_arg):
	var at_msg:Array = event.get_message_array(AtMessage)
	var g_id:int = event.get_group().get_id()
	for _at in at_msg:
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		var result:BotRequestResult = await _member.kick("您已被移出群聊")
		if result.is_success():
			event.reply("成功执行踢人操作",true)
		else:
			event.reply("踢人操作执行失败，请检查机器人是否为群主权限",true)
	