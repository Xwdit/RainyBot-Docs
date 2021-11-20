extends GroupAPI


class_name GroupConfig


static func init_meta(dic:Dictionary)->GroupConfig:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_name()->String:
	return ""
	

func get_announcement()->String:
	return ""
	
	
func get_confess_talk()->bool:
	return false
	
	
func get_allow_member_invite()->bool:
	return false
	
	
func get_auto_approve()->bool:
	return false
	
	
func get_anonymous_chat()->bool:
	return false
	
	
func set_name(name:String):
	return
	
	
func set_announcement(text:String):
	return
	
	
func set_confess_talk(enabled:bool):
	return


func set_allow_member_invite(enabled:bool):
	return
	
	
func set_auto_approve(enabled:bool):
	return
	
	
func set_anonymous_chat(enabled:bool):
	return
