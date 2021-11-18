extends Message


class_name DiceMessage


static func init(value:int)->DiceMessage:
	return null


static func init_meta(dic:Dictionary)->DiceMessage:
	return null

	
func get_dice_value()->int:
	return 0
	
	
func set_dice_value(value:int):
	return


func get_as_text()->String:
	return "[骰子:"+str(get_dice_value())+"]"
