extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的骰子消息类，其实例记录了与一个骰子消息相关的各类数据
class_name DiceMessage


## 通过指定一个骰子点数来手动构造一个骰子消息类实例
static func init(value:int)->DiceMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->DiceMessage:
	return null


## 获取此消息实例对应的骰子的点数
func get_dice_value()->int:
	return 0
	

## 设置此消息实例对应的骰子的点数	
func set_dice_value(value:int)->void:
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[骰子:"+str(get_dice_value())+"]"
