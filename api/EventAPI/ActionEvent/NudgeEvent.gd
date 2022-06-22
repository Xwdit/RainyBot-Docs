extends ActionEvent #继承动作事件类，请勿随意改动


## RainyBot的戳一戳事件类，记录了聊天中的一个戳一戳事件的相关数据
class_name NudgeEvent


## 戳一戳事件发生的上下文位置类型，可以是好友聊天或群聊
enum SubjectType {
	FRIEND, ## 事件发生在好友聊天中
	GROUP ## 事件发生在群组聊天中
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->NudgeEvent:
	return null


## 获取戳一戳事件的发送者ID
func get_sender_id()->int:
	return 0
	

## 获取戳一戳事件发生的上下文ID，例如在群聊中时应为群号	
func get_subject_id()->int:
	return 0
	

## 获取戳一戳事件的接收者(目标)的ID
func get_target_id()->int:
	return 0
	

## 获取戳一戳事件发生的上下文位置类型，可用类型请参见上方的SubjectType枚举
func get_subject_type()->int:
	return 0


## 用于判断戳一戳事件是否发生在指定的上下文位置类型
func is_subject_type(type:int)->bool:
	return false


## 获取戳一戳事件的动作文本
func get_action_text()->String:
	return ""
	

## 获取戳一戳事件的后缀文本	
func get_suffix_text()->String:
	return ""
