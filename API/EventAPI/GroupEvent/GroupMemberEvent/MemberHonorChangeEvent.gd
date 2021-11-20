extends GroupMemberEvent


class_name MemberHonorChangeEvent


enum ActionType{
	ACHIEVE,
	LOST
}


static func init_meta(dic:Dictionary)->MemberHonorChangeEvent:
	return null


func get_member()->GroupMember:
	return null
	
	
func get_group()->Group:
	return null
	

func get_honor_name()->String:
	return ""
	
	
func get_action_type()->int:
	return 0
