extends GroupEvent #继承群组事件类，请勿随意更改


## RainyBot的群组公告变更类，其实例记录了与一次群组公告变更事件相关的数据
class_name GroupAnnounceChangeEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupAnnounceChangeEvent:
	return null


## 获取变更前的群公告文本
func get_origin_announce()->String:
	return ""
	

## 获取变更后当前的群公告文本
func get_current_announce()->String:
	return ""
	

## 获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主
func get_operator()->GroupMember:
	return null
	

## 获取此事件实例所对应的群组实例	
func get_group()->Group:
	return null
