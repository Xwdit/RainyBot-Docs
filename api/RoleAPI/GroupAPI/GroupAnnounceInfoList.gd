extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表
##
## 这是RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表
## [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有公告信息(将返回[GroupAnnounceInfo]类实例)
##
class_name GroupAnnounceInfoList


## 通过机器人协议后端的元数据数组构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->GroupAnnounceInfoList:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定字典覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array)->void:
	return


## 根据指定的序号来从群公告信息列表实例中获取对应的[GroupAnnounceInfo]实例
## [br][br]若序号不存在则返回null
func get_from_index(index:int)->GroupAnnounceInfo:
	return null
		

## 根据指定的群公告ID来从群公告信息列表实例中获取对应的[GroupAnnounceInfo]实例
## [br][br]若群公告ID不存在则返回null
func get_from_id(announce_id:int)->GroupAnnounceInfo:
	return null


## 判断群公告信息列表实例中是否存在指定ID的群公告信息实例
func has_announce(announce_id:int)->bool:
	return false


## 获取群公告信息列表实例中的群公告信息实例的总数	
func get_size()->int:
	return -1
