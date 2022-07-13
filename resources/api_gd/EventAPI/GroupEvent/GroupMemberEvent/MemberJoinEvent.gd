extends GroupMemberEvent #继承群组成员事件类，请勿随意改动


## RainyBot的新成员入群类，其实例记录了与一次新成员入群事件相关的数据
class_name MemberJoinEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MemberJoinEvent:
	return null


## 获取此事件对应的群成员实例
func get_member()->GroupMember:
	return null
	

## 获取邀请新成员入群的群成员的实例
func get_invitor()->GroupMember:
	return null
	

## 获取此事件所发生的群组实例
func get_group()->Group:
	return null
