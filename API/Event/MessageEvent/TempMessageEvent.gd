extends MessageEvent


class_name TempMessageEvent


static func init_meta(dic:Dictionary)->TempMessageEvent:
	return null


func get_sender()->GroupMember:
	return null


func get_group()->Group:
	return null

	
func get_message_chain()->MessageChain:
	return null
	
	
func reply(msg:Message,quote:bool=false)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
func reply_chain(msg_chain:MessageChain,quote:bool=false)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
