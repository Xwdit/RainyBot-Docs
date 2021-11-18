extends MemberAPI


class_name MemberList


var data_array:Array = []


static func init_meta(arr:Array)->MemberList:
	return null


func get_metadata()->Array:
	return []


func set_metadata(arr:Array):
	return


func get_from_index(index:int)->Member:
	return null
		
		
func get_from_id(member_id:int)->Member:
	return null
		
		
func get_size()->int:
	return data_array.size()


func has_member(member_id:int)->bool:
	return false
