extends GroupMemberEvent #继承群组成员事件类，请勿随意改动


## RainyBot的群成员昵称变更类，其实例记录了与一次群成员昵称变更事件相关的数据
class_name MemberNameChangeEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MemberNameChangeEvent:
	return null


## 获取此事件对应的群成员实例
func get_member()->GroupMember:
	return null
	

## 获取此事件所发生的群组实例
func get_group()->Group:
	return null
	

## 获取变更前的群昵称
func get_origin_name()->String:
	return ""
	

## 获取变更后的当前群昵称	
func get_current_name()->String:
	return ""
