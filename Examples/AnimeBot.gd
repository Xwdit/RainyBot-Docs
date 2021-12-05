extends Plugin #默认继承插件类，请勿随意改动


#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("anime_bot","二次元机器人", "Xwdit","1.0","各种二次元功能~")


#将在此插件被完全加载后执行的操作
func _on_load():
	register_keyword("二次元图片",anime_img)
	register_keyword("二次元音乐",anime_music)
	register_event(GroupMessageEvent,"trigger_keyword")
	register_event(FriendMessageEvent,"trigger_keyword")


func anime_img(keyword,arg,event):
	var result = await Utils.send_http_get_request("https://www.dmoe.cc/random.php?return=json")
	if result is Dictionary: #判断回调是否成功
		if result.has("imgurl"):
			var reply:String = result["imgurl"]
			var msg = ImageMessage.init_url(reply)
			event.reply(msg,true,true)
			
			
func anime_music(keyword,arg,event):
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
		event.reply(msg)
