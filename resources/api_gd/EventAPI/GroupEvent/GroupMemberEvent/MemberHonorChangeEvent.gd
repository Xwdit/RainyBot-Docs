extends GroupMemberEvent #继承群组成员事件类，请勿随意改动


## RainyBot的群成员荣誉变更类，其实例记录了与一次群成员荣誉变更事件相关的数据
class_name MemberHonorChangeEvent


## 群荣誉更改的操作类型
enum ActionType{
	ACHIEVE, ## 群成员获得了新的群荣誉
	LOST ## 群成员失去了一个群荣誉
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MemberHonorChangeEvent:
	return null


## 获取此事件对应的群成员实例
func get_member()->GroupMember:
	return null
	

## 获取此事件所发生的群组实例
func get_group()->Group:
	return null
	

## 获取被变更的群荣誉的名称
func get_honor_name()->String:
	return ""
	

## 获取本次事件的变更类型，详见上方的ActionType枚举
func get_action_type()->int:
	return 0


## 用于判断本次事件是否为指定的变更类型
func is_action_type(action:int)->bool:
	return false
