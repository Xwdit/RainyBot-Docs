extends GroupMemberEvent


class_name MemberLeaveEvent


enum ReasonType{
	QUIT,
	KICK
}


static func init_meta(dic:Dictionary,reason_type:int)->MemberLeaveEvent:
	return null


func get_member()->GroupMember:
	return null
	
	
func get_operator()->GroupMember:
	return null
	
	
func get_group()->Group:
	return null
	
	
func get_reason_type()->int:
	return 0


func is_reason_type(reason:int)->bool:
	return false