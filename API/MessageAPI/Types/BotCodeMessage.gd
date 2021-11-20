extends Message


class_name BotCodeMessage


static func init(text:String)->BotCodeMessage:
	return null


static func init_meta(dic:Dictionary)->BotCodeMessage:
	return null

	
func get_code_text()->String:
	return ""
	
	
func set_code_text(text:String):
	return


func get_as_text()->String:
	return get_code_text()
