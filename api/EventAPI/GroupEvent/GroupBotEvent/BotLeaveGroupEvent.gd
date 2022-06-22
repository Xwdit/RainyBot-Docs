extends GroupBotEvent #继承Bot自身群组事件类，请勿随意改动


## RainyBot的Bot自身退出群组事件类，记录了Bot退出某个群组相关事件的数据
class_name BotLeaveGroupEvent


## Bot退出群组的原因类型枚举
enum ReasonType{
	ACTIVE, ## Bot主动退出群组
	KICK ## Bot被踢出群组
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary,reason_type:int)->BotLeaveGroupEvent:
	return null
	

## 获取造成此事件的成员实例，可能是Bot自身，对应群的管理员，或对应群的群主
func get_operator()->Member:
	return null
	

## 获取此事件对应的群组的实例
func get_group()->Group:
	return null


## 获取Bot退出群组的原因的类型，可用类型请参见此类的ReasonType枚举
func get_reason_type()->int:
	return 0
	

## 用于判断Bot退出群组的原因是否为指定的类型，可用类型请参见此类的ReasonType枚举
func is_reason_type(reason:int)->bool:
	return false
