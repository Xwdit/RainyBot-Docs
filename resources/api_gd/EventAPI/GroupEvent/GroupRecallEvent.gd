extends GroupEvent #继承群组事件类，请勿随意改动


## RainyBot的群组消息撤回类，其实例记录了与一次群组消息撤回事件相关的数据
class_name GroupRecallEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupRecallEvent:
	return null


## 获取被撤回的消息的发送者ID
func get_sender_id()->int:
	return 0
	

## 获取被撤回的消息的ID
func get_message_id()->int:
	return 0
	

## 获取被撤回的消息的发送时间戳
func get_message_timestamp()->int:
	return 0
	

## 获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是发送者自己	
func get_operator()->GroupMember:
	return null
	

## 获取此事件实例所对应的群组实例		
func get_group()->Group:
	return null
