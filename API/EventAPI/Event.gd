extends EventAPI


class_name Event


enum Category{
	ACTION,
	BOT,
	FRIEND,
	GROUP,
	MESSAGE,
	OTHER_CLIENT,
	REQUEST
}


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return
