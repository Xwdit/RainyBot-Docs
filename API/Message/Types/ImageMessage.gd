extends Message


class_name ImageMessage


static func init_id(image_id:String)->ImageMessage:
	return null


static func init_url(image_url:String)->ImageMessage:
	return null


static func init_path(image_path:String)->ImageMessage:
	return null


static func init_base64(image_base64:String)->ImageMessage:
	return null


static func init_meta(dic:Dictionary)->ImageMessage:
	return null

	
func get_image_id()->String:
	return ""
	
	
func set_image_id(image_id:String):
	return
	
	
func get_image_url()->String:
	return ""
	
	
func set_image_url(image_url:String):
	return
	
	
func get_image_path()->String:
	return ""
	
	
func set_image_path(image_path:String):
	return
	
	
func get_image_base64()->String:
	return ""
	
	
func set_image_base64(image_base64:String):
	return


func get_as_text()->String:
	return "[图片:"+get_image_id()+"]"
