extends Message


class_name MarketFaceMessage


static func init_meta(dic:Dictionary)->MarketFaceMessage:
	return null


func get_face_id()->int:
	return -1


func get_face_name()->String:
	return ""
	

func get_as_text()->String:
	return "[商城表情:"+get_face_name()+"]"
