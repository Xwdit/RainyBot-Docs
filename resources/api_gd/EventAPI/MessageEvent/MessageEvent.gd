extends Event


class_name MessageEvent


enum Type{
	FRIEND,
	GROUP,
	TEMP,
	STRANGER,
	OTHER_CLIENT
}


func get_message_chain()->MessageChain:
	return null


func get_message_array(types=[],exclude:bool=false,max_size:int=-1)->Array:
	return []


func get_message_text(types=[],exclude:bool=false)->String:
	return ""


func get_message_id()->int:
	return 0
	
	
func get_message_timestamp()->int:
	return 0


func get_sender_id()->int:
	return 0
	
	
func reply(msg,quote:bool=false,at:bool=false)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
