extends ActionEvent


class_name NudgeEvent


enum SubjectType {
	FRIEND,
	GROUP
}


static func init_meta(dic:Dictionary)->NudgeEvent:
	return null


func get_sender_id()->int:
	return 0
	
	
func get_subject_id()->int:
	return 0
	
	
func get_target_id()->int:
	return 0
	
	
func get_subject_type()->int:
	return 0


func is_subject_type(type:int)->bool:
	return false


func get_action_text()->String:
	return ""
	
	
func get_suffix_text()->String:
	return ""
