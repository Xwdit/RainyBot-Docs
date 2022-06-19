extends RequestEvent


class_name NewFriendRequestEvent


enum RespondType{
	ACCEPT,
	REFUSE,
	REFUSE_BLACKLIST
}


static func init_meta(dic:Dictionary)->NewFriendRequestEvent:
	return null
	
	
func respond(respond_type:int,msg:String="")->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
