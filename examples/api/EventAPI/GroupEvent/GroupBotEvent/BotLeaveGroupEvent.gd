extends GroupBotEvent


class_name BotLeaveGroupEvent


enum ReasonType{
	ACTIVE,
	KICK
}


static func init_meta(dic:Dictionary,reason_type:int)->BotLeaveGroupEvent:
	return null
	

func get_operator()->Member:
	return null
	
	
func get_group()->Group:
	return null


func get_reason_type()->int:
	return 0
	
	
func is_reason_type(reason:int)->bool:
	return false
