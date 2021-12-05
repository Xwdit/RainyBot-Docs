extends CoreAPI


class_name BotRequestResult


enum StatusCode{
	SUCCESS,
	WRONG_VERIFY_KEY,
	BOT_NOT_EXIST,
	SESSION_INVALID,
	SESSION_NOT_ACTIVE,
	TARGET_NOT_EXIST,
	FILE_NOT_EXIST,
	NO_PERMISSION = 10,
	BOT_MUTED = 20,
	MESSAGE_TOO_LONG = 30,
	WRONG_USAGE = 400
}


static func init_meta(dic:Dictionary)->BotRequestResult:
	return null


func get_metadata()->Dictionary:
	return null


func set_metadata(dic:Dictionary):
	return


func get_status_code()->int:
	return 0
	
	
func get_status_msg()->String:
	return ""
	
	
func get_message_id()->int:
	return 0


func is_success()->bool:
	return false
	
	
func is_status(code:int)->bool:
	return false
	
	
func recall()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null