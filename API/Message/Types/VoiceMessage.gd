extends Message


class_name VoiceMessage


static func init_id(voice_id:String)->VoiceMessage:
	return null


static func init_url(voice_url:String)->VoiceMessage:
	return null


static func init_path(voice_path:String)->VoiceMessage:
	return null


static func init_base64(voice_base64:String)->VoiceMessage:
	return null


static func init_meta(dic:Dictionary)->VoiceMessage:
	return null

	
func get_voice_id()->String:
	return ""
	
	
func set_voice_id(voice_id:String):
	return
	
	
func get_voice_url()->String:
	return ""
	
	
func set_voice_url(voice_url:String):
	return
	
	
func get_voice_path()->String:
	return ""
	
	
func set_voice_path(voice_path:String):
	return
	
	
func get_voice_base64()->String:
	return ""
	
	
func set_voice_base64(voice_base64:String):
	return
	
	
func get_voice_length()->int:
	return 0


func get_as_text()->String:
	return "[语音:"+get_voice_id()+"]"
