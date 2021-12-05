extends Message


class_name PokeMessage


enum PokeType {
	POKE,
	SHOW_LOVE,
	LIKE,
	HEART_BROKEN,
	SIX_SIX_SIX,
	FANG_DA_ZHAO
}


static func init(type:int)->PokeMessage:
	return null


static func init_meta(dic:Dictionary)->PokeMessage:
	return null

	
func get_poke_type()->int:
	return 0
	
	
func set_poke_type(type:int):
	return
	
	
func is_poke_type(type:int)->bool:
	return false
	
	
func get_as_text()->String:
	return "[戳一戳:"+PokeType.keys()[get_poke_type]+"]"
