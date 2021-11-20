extends MessageAPI


class_name MessageChain


static func init(msg:Message)->MessageChain:
	return null


static func init_id(msg_id:int)->MessageChain:
	return null


static func init_meta(arr:Array)->MessageChain:
	return null


func get_metadata()->Array:
	return []


func set_metadata(arr:Array):
	return


func append(msg:Message)->MessageChain:
	return null


func get_message(index:int)->Message:
	return null


func get_message_array(types:Array=[],exclude:bool=false,max_size:int=-1)->Array:
	return []


func get_message_text(types:Array=[],exclude:bool=false)->String:
	return ""


func get_message_id()->int:
	return 0


func get_message_timestamp()->int:
	return 0


func has_message_type(type:int)->bool:
	return false


func set_essence()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


func recall()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
