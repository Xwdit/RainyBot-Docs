extends GroupMemberEvent #继承群组成员事件类，请勿随意改动


## RainyBot的群成员被禁言类，其实例记录了与一次群成员被禁言事件相关的数据
class_name MemberMuteEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MemberMuteEvent:
	return null


## 获取此事件对应的群成员实例
func get_member()->GroupMember:
	return null


## 获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主
func get_operator()->GroupMember:
	return null


## 获取此事件所发生的群组实例
func get_group()->Group:
	return null
	

## 获取被禁言的时长，以秒为单位
func get_duration()->int:
	return 0
