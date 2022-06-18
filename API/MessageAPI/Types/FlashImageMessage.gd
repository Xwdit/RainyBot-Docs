extends Message


class_name FlashImageMessage


static func init_id(image_id:String)->FlashImageMessage:
	return null


static func init_url(image_url:String)->FlashImageMessage:
	return null


static func init_path(image_path:String)->FlashImageMessage:
	return null


static func init_base64(image_base64:String)->FlashImageMessage:
	return null


static func init_meta(dic:Dictionary)->FlashImageMessage:
	return null

	
func get_image_id()->String:
	return ""
	
	
func set_image_id(image_id:String)->void:
	return
	
	
func get_image_url()->String:
	return ""
	
	
func set_image_url(image_url:String)->void:
	return
	
	
func get_image_path()->String:
	return ""
	
	
func set_image_path(image_path:String)->void:
	return
	
	
func get_image_base64()->String:
	return ""
	
	
func set_image_base64(image_base64:String)->void:
	return


func get_as_text()->String:
	return "[闪照:"+get_image_id()+"]"
