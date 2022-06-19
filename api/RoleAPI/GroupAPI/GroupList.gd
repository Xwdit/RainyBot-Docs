extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表
##
## 这是RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表
## [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有群组(将返回Group类实例)
##


class_name GroupList #定义类名为GroupList，请勿进行改动


## 通过机器人协议后端的元数据数组构造一个GroupList类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->GroupList:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array)->void:
	return


## 根据指定的序号来从群列表实例中获取对应的Group实例
## [br][br]若序号不存在则返回null
func get_from_index(index:int)->Group:
	return null


## 根据指定的群ID(群号)来从群列表实例中获取对应的Group实例
## [br][br]若群ID不存在则返回null
func get_from_id(group_id:int)->Group:
	return null


## 获取群列表实例中的群实例的总数
func get_size()->int:
	return 0


## 判断群列表实例中是否存在指定群ID(群号)的群组实例
func has_group(group_id:int)->bool:
	return false
