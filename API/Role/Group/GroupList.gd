extends GroupAPI


class_name GroupList


var data_array:Array = []


static func init_meta(arr:Array)->GroupList:
	return null


func get_metadata()->Array:
	return []


func set_metadata(arr:Array):
	return


func get_from_index(index:int)->Group:
	return null


func get_from_id(group_id:int)->Group:
	return null

		
func get_size()->int:
	return 0


func has_group(group_id:int)->bool:
	return false
