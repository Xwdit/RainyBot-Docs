extends FriendEvent #继承好友事件类，请勿随意改动


## RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据
class_name FriendNickChangeEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->FriendNickChangeEvent:
	return null
	

## 获取此事件对应的好友的原昵称
func get_origin_nickname()->String:
	return ""


## 获取此事件对应的好友更改后的昵称
func get_current_nickname()->String:
	return ""


## 获取此事件对应的好友的成员实例
func get_member()->Member:
	return null
