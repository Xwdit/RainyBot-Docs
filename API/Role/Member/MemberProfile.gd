extends MemberAPI


class_name MemberProfile


enum Sex {
	UNKNOWN,
	MALE,
	FEMALE
}


static func init_meta(dic:Dictionary)->MemberProfile:
	return null
	
	
func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_nickname()->String:
	return ""
	
	
func get_email()->String:
	return ""
	
	
func get_age()->int:
	return 0
	
	
func get_level()->int:
	return 0
	
	
func get_sign()->String:
	return ""
	
	
func get_sex()->int:
	return Sex.UNKNOWN
