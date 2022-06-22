extends FriendEvent #继承好友事件类，请勿随意改动


## RainyBot的好友输入状态变更事件类，记录了某次好友输入状态变更事件的相关数据
class_name FriendInputStatusChangeEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->FriendInputStatusChangeEvent:
	return null
	

## 用于判断此事件对应的输入状态是开始输入还是停止输入
func get_input_state()->bool:
	return false
	

## 获取此事件对应的好友成员实例
func get_member()->Member:
	return null
