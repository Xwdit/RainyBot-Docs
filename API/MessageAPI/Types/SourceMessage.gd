extends Message


class_name SourceMessage


static func init_meta(dic:Dictionary)->SourceMessage:
	return null


func get_message_id()->int:
	return 0
	
	
func get_timestamp()->int:
	return 0


func get_as_text()->String:
	return "[消息ID:"+str(get_message_id())+",时间:"+str(get_timestamp())+"]"
