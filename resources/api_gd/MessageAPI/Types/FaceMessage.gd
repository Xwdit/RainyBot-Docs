extends Message


class_name FaceMessage


static func init(face)->FaceMessage:
	return null


static func init_meta(dic:Dictionary)->FaceMessage:
	return null


func get_face_id()->int:
	return 0


func set_face_id(face_id:int)->void:
	return

	
func get_face_name()->String:
	return ""
	
	
func set_face_name(face_name:String)->void:
	return


func get_as_text()->String:
	return "[表情:"+get_face_name()+"]"
