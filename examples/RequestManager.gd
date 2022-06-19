#RainyBot请求管理示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅


extends Plugin #默认继承插件类，请勿随意改动


var request_dic:Dictionary = {} #用于储存收到的请求的字典
var receive_qq:int = 993105366 #收到各类请求时将询问的号码(需要为好友)


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("request_manager","请求管理", "Xwdit","1.0","用于管理各类请求")


#将在此插件被完全加载后执行的操作
func _on_load():
	#注册邀请入群请求事件，绑定到自定义的"_request_group_invite"函数
	register_event(GroupInviteRequestEvent,_request_group_invite)
	
	#注册加好友请求事件，绑定到自定义的"_request_new_friend"函数
	register_event(NewFriendRequestEvent,_request_new_friend)
	
	#注册好友消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event(FriendMessageEvent,"trigger_keyword")
	
	#注册所需关键词并绑定到"_respond"函数
	register_keyword(["同意请求","拒绝请求"],_respond)


#上方注册的邀请入群请求事件将触发此函数，事件所绑定的函数需要接收一个对应事件实例的参数
func _request_group_invite(event:GroupInviteRequestEvent):
	request_dic[event.get_group_id()] = event #将此请求事件储存在字典中事件所对应的群号下
	
	var g_name = event.get_group_name() #获取被邀请加入的群名称
	var g_id = str(event.get_group_id()) #获取被邀请加入的群号，并转为字符串
	var s_name = event.get_sender_name() #获取邀请机器人入群者的名称
	var s_id = str(event.get_sender_id()) #获取邀请机器人入群者的号码，并转为字符串
	var text_arr = [s_name,s_id,g_name,g_id,g_id,g_id] #将以上信息按照所需顺序放入数组中，用于后续填充到文本
	
	#使用上方定义的数组中的每项文本，依次替换填充到下方文本中的%s标记中
	var text = "收到%s(%s)的邀请入群申请\n群名称:%s(%s)\n若要同意请发送:\n同意请求 %s\n若要拒绝请发送:\n拒绝请求 %s" % text_arr
	
	#基于上方设定的的将询问的号码，构建一个独立成员对象实例(通常可理解为好友)
	#随后调用实例中的"send_message"函数，主动向此号码发送询问信息
	Member.init(receive_qq).send_message(text)
	

#上方注册的添加好友请求事件将触发此函数，事件所绑定的函数需要接收一个对应事件实例的参数
func _request_new_friend(event:NewFriendRequestEvent):
	request_dic[event.get_sender_id()] = event #将此请求事件储存在字典中事件所对应的请求者号码下
	
	var s_name = event.get_sender_name() #获取请求添加好友方的名称
	var s_id = str(event.get_sender_id()) #获取请求添加好友方的号码，并转为字符串
	var text_arr = [s_name,s_id,s_id,s_id] #将以上信息按照所需顺序放入数组中，用于后续填充到文本
	
	#使用上方定义的数组中的每项文本，依次替换填充到下方文本中的%s标记中
	var text = "收到%s(%s)的好友添加申请\n若要同意请发送:\n同意请求 %s\n若要拒绝请发送:\n拒绝请求 %s" % text_arr
	
	#基于上方设定的的将询问的号码，构建一个独立成员对象实例(通常可理解为好友)
	#随后调用实例中的"send_message"函数，主动向此号码发送询问信息
	Member.init(receive_qq).send_message(text)
	

#将于关键词触发前用于检查是否可触发关键词
func _check_perm(event):
	#检查触发关键词的消息发送者的号码，如果为上方设定的号码则返回true；否则返回false
	return event.get_sender_id() == receive_qq
	

#上方注册的关键词将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _respond(keyword,parsed,arg,event):
	if !_check_perm(event):
		return

	var id = arg.to_int() #从关键词参数中获取整数，用于获得要响应的号码
	
	if request_dic.has(id): #检查是否存在匹配此号码的请求
		var request = request_dic[id] #从字典中获取储存的请求实例
		request_dic.erase(id) #从字典中删除已被获取的实例
		
		match keyword: #根据关键词文本匹配要执行的操作
			"同意请求":
				if request is GroupInviteRequestEvent: #判断实例是否为邀请入群请求
					#通过调用请求实例的"respond"函数来同意请求，可响应的类型选项对于每种请求类型均有所不同
					request.respond(GroupInviteRequestEvent.RespondType.ACCEPT)
					#发送响应成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("已同意入群邀请",true)
				
				elif request is NewFriendRequestEvent: #否则判断实例是否为添加好友请求
					#通过调用请求实例的"respond"函数来同意请求，可响应的类型选项对于每种请求类型均有所不同
					request.respond(NewFriendRequestEvent.RespondType.ACCEPT)
					#发送响应成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("已同意好友申请",true)
			
			"拒绝请求":
				if request is GroupInviteRequestEvent: #判断实例是否为邀请入群请求
					#通过调用请求实例的"respond"函数来拒绝请求，可响应的类型选项对于每种请求类型均有所不同
					request.respond(GroupInviteRequestEvent.RespondType.REFUSE)
					#发送响应成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("已拒绝入群邀请",true)
				
				elif request is NewFriendRequestEvent: #否则判断实例是否为添加好友请求
					#通过调用请求实例的"respond"函数来拒绝请求，可响应的类型选项对于每种请求类型均有所不同
					request.respond(NewFriendRequestEvent.RespondType.REFUSE)
					#发送响应成功消息至触发此关键词的位置，并引用原消息(第二个参数)
					event.reply("已拒绝好友申请",true)
	
	else: #未找到匹配此号码的请求
		#发送反馈消息至触发此关键词的位置，并引用原消息(第二个参数)
		event.reply("未找到对应的请求",true)
