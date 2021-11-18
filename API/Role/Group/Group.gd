extends GroupAPI


class_name Group


static func init(group_id:int)->Group:
	return null
	

static func init_meta(dic:Dictionary)->Group:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_name()->String:
	return ""


func get_id()->int:
	return 0


func get_bot_permission()->int:
	return 0


func get_member(member_id:int)->GroupMember:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func get_member_list()->GroupMemberList:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func get_member_profile(member_id:int)->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func toggle_mute_all(enabled:bool)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
func get_group_config()->GroupConfig:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func set_group_config(config:GroupConfig)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_message(msg:Message,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func send_message_chain(msg_chain:MessageChain,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
func send_nudge(member_id:int)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func quit()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
