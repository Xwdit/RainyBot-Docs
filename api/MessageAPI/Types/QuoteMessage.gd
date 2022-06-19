extends Message


class_name QuoteMessage


static func init_meta(dic:Dictionary)->QuoteMessage:
	return null


func get_message_id()->int:
	return 0
	
	
func get_group_id()->int:
	return 0


func get_sender_id()->int:
	return 0
	
	
func get_target_id()->int:
	return 0
	
	
func get_message_chain()->MessageChain:
	return null
	
	
func get_as_text()->String:
	return "[引用回复:"+str(get_message_id())+"]"
