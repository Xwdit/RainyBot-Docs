extends GroupBotEvent #继承Bot自身群组事件类，请勿随意改动


## RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据
class_name BotPermChangeEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->BotPermChangeEvent:
	return null
	
	
func get_origin_permission()->int:
	return 0
	

func get_current_permission()->int:
	return 0
	
	
func get_group()->Group:
	return null
