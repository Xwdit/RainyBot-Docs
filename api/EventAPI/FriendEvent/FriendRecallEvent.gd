extends FriendEvent #继承好友事件类，请勿随意改动


## RainyBot的好友消息撤回事件类，记录了某次好友消息撤回事件的相关数据
class_name FriendRecallEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->FriendRecallEvent:
	return null
	

## 获取事件原消息发送者的ID	
func get_sender_id()->int:
	return 0
	

## 获取事件对应的原消息的ID
func get_message_id()->int:
	return 0
	

## 获取事件对应的原消息的发送时间
func get_message_time()->int:
	return 0
	

## 获取造成此事件的成员的ID(通常为此事件对应的好友的ID或Bot自身的ID)	
func get_operator_id()->int:
	return 0
