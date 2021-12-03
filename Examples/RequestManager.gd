#RainyBot插件模板，相关帮助文档及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅

extends Plugin #默认继承插件类，请勿随意改动


var request_dic:Dictionary = {} #用于储存收到的请求的字典
var receive_qq:int = 993105366 #收到请求时询问的好友qq


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("request_manager","请求管理", "Xwdit","1.0","用于管理各类请求")


#将在此插件被完全加载后执行的操作
func _on_load():
	#开始监听各类事件
	register_event(GroupInviteRequestEvent,"_request_group_invite")
	register_event(NewFriendRequestEvent,"_request_new_friend")
	register_event(FriendMessageEvent,"_receive_message")


#收到群邀请事件
func _request_group_invite(event:GroupInviteRequestEvent):
	request_dic[event.get_group_id()] = event
	var g_name = event.get_group_name()
	var g_id = str(event.get_group_id())
	var s_name = event.get_sender_name()
	var s_id = str(event.get_sender_id())
	var text_arr = [s_name,s_id,g_name,g_id,g_id,g_id]
	var text = "收到%s(%s)的邀请入群申请\n群名称:%s(%s)\n若要同意请发送:\n同意请求 %s\n若要拒绝请发送:\n拒绝请求 %s" % text_arr
	Member.init(receive_qq).send_message(TextMessage.init(text))
	

#收到好友添加请求事件
func _request_new_friend(event:NewFriendRequestEvent):
	request_dic[event.get_sender_id()] = event
	var s_name = event.get_sender_name()
	var s_id = str(event.get_sender_id())
	var text_arr = [s_name,s_id,s_id,s_id]
	var text = "收到%s(%s)的好友添加申请\n若要同意请发送:\n同意请求 %s\n若要拒绝请发送:\n拒绝请求 %s" % text_arr
	Member.init(receive_qq).send_message(TextMessage.init(text))
	

#收到好友消息
func _receive_message(event:FriendMessageEvent):
	if event.get_sender().get_id() == receive_qq:
		var text = event.get_message_chain().get_message_text([TextMessage])
		if text.begins_with("同意请求"):
			var id = text.to_int()
			if request_dic.has(id):
				var request = request_dic[id]
				request_dic.erase(id)
				if request is GroupInviteRequestEvent:
					request.respond(GroupInviteRequestEvent.RespondType.ACCEPT)
					event.reply(TextMessage.init("已同意入群邀请"),true)
				elif request is NewFriendRequestEvent:
					request.respond(NewFriendRequestEvent.RespondType.ACCEPT)
					event.reply(TextMessage.init("已同意好友申请"),true)
			else:
				event.reply(TextMessage.init("未找到对应的请求"),true)
		elif text.begins_with("拒绝请求"):
			var id = text.to_int()
			if request_dic.has(id):
				var request = request_dic[id]
				request_dic.erase(id)
				if request is GroupInviteRequestEvent:
					request.respond(GroupInviteRequestEvent.RespondType.REFUSE)
					event.reply(TextMessage.init("已拒绝入群邀请"),true)
				elif request is NewFriendRequestEvent:
					request.respond(NewFriendRequestEvent.RespondType.REFUSE)
					event.reply(TextMessage.init("已拒绝好友申请"),true)
			else:
				event.reply(TextMessage.init("未找到对应的请求"),true)
