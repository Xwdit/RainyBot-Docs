extends Message


class_name TextMessage


static func init(text:String)->TextMessage:
	return null


static func init_meta(dic:Dictionary)->TextMessage:
	return null

	
func get_message_text()->String:
	return ""
	
	
func set_message_text(text:String)->void:
	return


func get_as_text()->String:
	return get_message_text()
