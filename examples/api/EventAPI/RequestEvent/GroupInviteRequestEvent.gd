extends RequestEvent


class_name GroupInviteRequestEvent


enum RespondType{
	ACCEPT,
	REFUSE
}


static func init_meta(dic:Dictionary)->GroupInviteRequestEvent:
	return null


func get_group_name()->String:
	return ""
	
	
func respond(respond_type:int,msg:String="")->BotRequestResult:
	return null
