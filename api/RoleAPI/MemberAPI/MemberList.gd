extends MemberAPI #继承MemberAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的个体成员列表类，通常代表一个对应实例，储存了机器人所有个体成员(通常为好友)的列表
##
## 这是RainyBot的个体成员列表类，通常代表一个对应实例，储存了机器人所有个体成员(通常为好友)的列表
## [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有个体成员(将返回Member类实例)
##


class_name MemberList #定义类名为MemberList，请勿进行改动


## 通过机器人协议后端的元数据数组构造一个MemberList类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->MemberList:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array)->void:
	return


## 根据指定的序号来从个体成员列表实例中获取对应的Member实例
## [br][br]若序号不存在则返回null
func get_from_index(index:int)->Member:
	return null
		

## 根据指定的个体成员ID来从个体成员列表实例中获取对应的Member实例
## [br][br]若个体成员ID不存在则返回null	
func get_from_id(member_id:int)->Member:
	return null
		

## 获取个体成员列表实例中的个体成员实例的总数	
func get_size()->int:
	return 0


## 判断个体成员列表实例中是否存在指定ID的个体成员实例
func has_member(member_id:int)->bool:
	return false
