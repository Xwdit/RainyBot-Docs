extends RoleAPI


class_name OtherClient


static func init()->OtherClient:
	return null
	

static func init_meta(dic:Dictionary)->OtherClient:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return
	
	
func get_id()->int:
	return 0
	
	
func get_platform()->String:
	return ""


func send_message(msg:Message,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_message_chain(msg_chain:MessageChain,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_nudge()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
