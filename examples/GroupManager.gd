#RainyBot简易群管示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("group_manage_bot","群管系统", "Xwdit", "1.0", "让机器人具备群聊管理的能力" )


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册群消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event(GroupMessageEvent,"trigger_keyword")
	
	#注册多个关键词并绑定到"group_manage"函数
	register_keyword(["禁言","解除禁言","更改名片","更改头衔","踢人"],group_manage)
		

#将于关键词触发前用于检查是否可触发关键词,需要接收触发关键词的事件实例
func check_perm(event):
	#如果触发关键词的消息发送者的权限是普通成员，则返回false，否则返回true
	return !event.get_sender().is_permission(GroupMember.Permission.MEMBER)


#上方注册的关键词将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func group_manage(keyword,parsed,arg,event):
	if !check_perm(event):
		event.reply("您不是管理员或群主，无法执行此操作!")
		return
	var at_msg:Array = event.get_message_array(AtMessage) #获取包含消息事件中的所有AT消息的数组
	var g_id:int = event.get_group_id() #获取消息事件发生的群号(仅限群消息事件)
	
	for _at in at_msg: #循环AT消息数组中的每一项，把当前循环到的那一项储存到变量_at中
		
		#根据上方获取的群号，以及从本次循环的AT消息中获取的AT目标的号码，构造一个群成员GroupMember对象
		var _member:GroupMember = GroupMember.init(g_id,_at.get_target_id())
		
		match keyword: #匹配触发此函数的关键词文本
			"禁言":
				var sec:int = arg.to_int() #从关键词参数中获取整数(用于获取要禁言的时长)
				
				#调用刚才构造的群成员对象中的"mute"函数，将此成员禁言sec秒，并等待一个执行结果
				var result:BotRequestResult = await _member.mute(sec)
				
				if result.is_success(): #判断执行结果是否为执行成功
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("成功执行禁言操作，时长"+str(sec)+"秒",true)
				else:
					#发送执行失败消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("禁言操作执行失败，请检查机器人权限是否为管理员",true)
					
			"解除禁言":
				#调用刚才构造的群成员对象中的"unmute"函数，将此成员解除禁言，并等待一个执行结果
				var result:BotRequestResult = await _member.unmute()
				
				if result.is_success(): #判断执行结果是否为执行成功
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("成功执行解除禁言操作",true)
				else:
					#发送执行失败消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("解除禁言操作执行失败，请检查机器人权限是否为管理员",true)

			"更改名片":
				#调用刚才构造的群成员对象中的"change_name"函数，将此成员名片更改为arg，并等待一个执行结果
				var result:BotRequestResult = await _member.change_name(arg)
				
				if result.is_success(): #判断执行结果是否为执行成功
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("成功将群名片修改为:"+arg,true)
				else:
					#发送执行失败消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("名片修改操作执行失败，请检查机器人权限是否为管理员",true)

			"更改头衔":
				#调用刚才构造的群成员对象中的"change_special_title"函数，将此成员头衔更改为arg，并等待一个执行结果
				var result:BotRequestResult = await _member.change_special_title(arg)
				
				if result.is_success(): #判断执行结果是否为执行成功
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("成功将专属头衔修改为:"+arg,true)
				else:
					#发送执行失败消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("头衔修改操作执行失败，请检查机器人是否为群主权限",true)

			"踢人":
				#调用刚才构造的群成员对象中的"kick"函数，将此成员踢出群聊，并等待一个执行结果
				var result:BotRequestResult = await _member.kick()
				
				if result.is_success(): #判断执行结果是否为执行成功
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("成功执行踢人操作",true)
				else:
					#发送执行成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("踢人操作执行失败，请检查机器人是否为管理员权限",true)