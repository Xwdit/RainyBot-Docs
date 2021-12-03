extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群成员列表类，通常代表一个对应实例，储存了某个群组中所有群成员的列表
##
## @desc:
##     这是RainyBot的群成员列表类，通常代表一个对应实例，储存了某个群组中所有群成员的列表
##     你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有群成员(将返回GroupMember类实例)
##


class_name GroupMemberList #定义类名为GroupMemberList，请勿进行改动


## 通过机器人协议后端的元数据数组构造一个GroupMemberList类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->GroupMemberList:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array):
	return


## 根据指定的序号来从群成员列表实例中获取对应的GroupMember实例
## 若序号不存在则返回null
func get_from_index(index:int)->GroupMember:
	return null


## 根据指定的群成员ID来从群成员列表实例中获取对应的GroupMember实例
## 若群成员ID不存在则返回null
func get_from_id(member_id:int)->GroupMember:
	return null


## 判断群成员列表实例中是否存在指定ID的群成员实例
func has_member(member_id:int)->bool:
	return false
	

## 获取群成员列表实例中的群成员实例的总数		
func get_size()->int:
	return 0
