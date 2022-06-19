extends MessageAPI


class_name ForwardMessageNode


static func init(message_id:int,sender_id:int=-1,time:int=0,sender_name:String="",message_chain:MessageChain=null)->ForwardMessageNode:
	return null


static func init_meta(dic:Dictionary)->ForwardMessageNode:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary)->void:
	return


func get_sender_id()->int:
	return 0
	
	
func set_sender_id(id:int)->void:
	return
	

func get_time()->int:
	return 0
	
	
func set_time(time:int)->void:
	return
	
	
func get_sender_name()->String:
	return ""
	
	
func set_sender_name(name:int)->void:
	return
	
	
func get_message_chain()->MessageChain:
	return null
	
	
func set_message_chain(msg_chain:MessageChain)->void:
	return


func get_message_id()->int:
	return 0
	
	
func set_message_id(id:int)->void:
	return
