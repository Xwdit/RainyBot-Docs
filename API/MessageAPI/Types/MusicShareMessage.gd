extends Message


class_name MusicShareMessage


static func init(kind:String,title:String,summary:String,jump_url:String,picture_url:String,music_url:String,brief:String)->MusicShareMessage:
	return null


static func init_meta(dic:Dictionary)->MusicShareMessage:
	return null

	
func get_share_kind()->String:
	return ""
	
	
func set_share_kind(text:String):
	return
	
	
func get_share_title()->String:
	return ""
	
	
func set_share_title(text:String):
	return
	
	
func get_share_summary()->String:
	return ""
	
	
func set_share_summary(text:String):
	return
	
	
func get_share_jump_url()->String:
	return ""
	
	
func set_share_jump_url(text:String):
	return
	
	
func get_share_picture_url()->String:
	return ""
	
	
func set_share_picture_url(text:String):
	return
	
	
func get_share_music_url()->String:
	return ""
	
	
func set_share_music_url(text:String):
	return
	
	
func get_share_brief()->String:
	return ""
	
	
func set_share_brief(text:String):
	return


func get_as_text()->String:
	return "[音乐分享:"+get_share_title()+"]"
