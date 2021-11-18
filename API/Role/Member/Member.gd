extends MemberAPI


class_name Member


enum Role{
	FRIEND,
	STRANGER
}


static func init(member_id:int,role:int=Role.FRIEND)->Member:
	return null
	

static func init_meta(dic:Dictionary,role:int=Role.FRIEND)->Member:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_role()->int:
	return 0
	
	
func set_role(role:int):
	return


func get_id()->int:
	return 0


func get_name()->String:
	return ""
	
	
func get_remark()->String:
	return ""
	
	
func get_profile()->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_message(msg:Message,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_message_chain(msg_chain:MessageChain,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_nudge()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func delete_friend()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
