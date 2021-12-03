extends Plugin #默认继承插件类，请勿随意改动


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("anime_bot","二次元机器人", "Xwdit","1.0","各种二次元功能~")


#将在此插件被完全加载后执行的操作
func _on_load():
	register_event(GroupMessageEvent,"_chat")
	register_event(FriendMessageEvent,"_chat")


#接收到群消息事件
func _chat(event:MessageEvent):
	var text = event.get_message_chain().get_message_text([TextMessage])
	if text.begins_with("二次元图片"):
		var result = await Utils.send_http_get_request("https://www.dmoe.cc/random.php?return=json")
		if result is Dictionary: #判断回调是否成功
			if result.has("imgurl"):
				var reply:String = result["imgurl"]
				var msg = ImageMessage.init_url(reply)
				event.reply(msg,true)
	elif text.begins_with("二次元音乐"):
		var result = await Utils.send_http_get_request("https://api.paugram.com/acgm/")
		if result is Dictionary: #判断回调是否成功
			var msg = MusicShareMessage.init(
				"NeteaseCloudMusic",
				result["title"],
				result["artist"],
				"https://y.music.163.com/m/song?id="+str(result["id"]),
				result["cover"],
				result["link"],
				result["album"]
			)
			event.reply(msg,true)
