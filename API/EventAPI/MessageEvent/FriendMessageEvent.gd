extends MessageEvent


class_name FriendMessageEvent


static func init_meta(dic:Dictionary)->FriendMessageEvent:
	return null


func get_sender()->Member:
	return null
	
	
func reply(msg,quote:bool=false,at:bool=false)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null	
