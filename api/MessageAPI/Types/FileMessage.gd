extends Message


class_name FileMessage


static func init_meta(dic:Dictionary)->FileMessage:
	return null


func get_file_id()->String:
	return ""


func get_file_name()->String:
	return ""


func get_file_size()->int:
	return 0


func get_as_text()->String:
	return "[文件"+get_file_name()+"]"
