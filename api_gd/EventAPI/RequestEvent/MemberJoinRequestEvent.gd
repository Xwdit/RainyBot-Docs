extends RequestEvent


class_name MemberJoinRequestEvent


enum RespondType{
	ACCEPT,
	REFUSE,
	IGNORE,
	REFUSE_BLACKLIST,
	IGNORE_BLACKLIST
}


static func init_meta(dic:Dictionary)->MemberJoinRequestEvent:
	return null


func get_group_name()->String:
	return ""
	
	
func respond(respond_type:int,msg:String="",timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
