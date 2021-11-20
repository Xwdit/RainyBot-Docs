extends Message


class_name AtMessage


static func init(target_id:int)->AtMessage:
	return null


static func init_meta(dic:Dictionary)->AtMessage:
	return null


func get_target_id()->int:
	return 0


func set_target_id(target_id:int):
	return

	
func get_display_text()->String:
	return ""


func get_as_text()->String:
	return get_display_text()
