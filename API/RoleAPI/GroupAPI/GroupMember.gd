extends GroupAPI


class_name GroupMember


enum Permission{
	MEMBER,
	ADMINISTRATOR,
	OWNER
}


static func init(group_id:int,member_id:int)->GroupMember:
	return null


static func init_meta(dic:Dictionary)->GroupMember:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_id()->int:
	return 0


func get_name()->String:
	return ""
	
	
func get_special_title()->String:
	return ""
	
	
func get_permission()->int:
	return 0
	
	
func get_join_timestamp()->int:
	return 0
	
	
func get_last_speak_timestamp()->int:
	return 0
	
	
func get_mute_time_remaining()->int:
	return 0


func get_group()->Group:
	return null


func change_name(new_name:String)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

func change_special_title(new_title:String)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
func toggle_admin(enabled:bool)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func kick(message:String="")->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func mute(time:int=1800)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
func unmute()->BotRequestResult:
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
