extends BotEvent


class_name BotOfflineEvent


enum ReasonType{
	ACTIVE,
	FORCE,
	DROPPED
}


static func init_meta(dic:Dictionary,reason_type:int)->BotOfflineEvent:
	return null
	
	
func get_reason_type()->int:
	return 0


func is_reason_type(reason:int)->bool:
	return false
