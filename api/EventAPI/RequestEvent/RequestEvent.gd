extends Event


class_name RequestEvent


enum Type{
	NEW_FRIEND,
	MEMBER_JOIN,
	GROUP_INVITE
}


func get_event_id()->int:
	return 0
	
	
func get_sender_id()->int:
	return 0
	
	
func get_sender_name()->String:
	return ""
	
	
func get_group_id()->int:
	return 0
	
	
func get_request_message()->String:
	return ""
