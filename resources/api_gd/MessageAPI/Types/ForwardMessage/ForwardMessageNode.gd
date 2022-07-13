extends MessageAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


## 这是RainyBot的单条转发消息类，其实例储存了一系列合并转发消息中的单条消息的相关数据
class_name ForwardMessageNode


## 基于指定的参数来手动构造一个ForwardMessageNode类的实例
## [br][br]需要的参数从左到右分别为: 被转发的消息ID，被转发的消息的发送者ID,被转发的消息的发送时间戳，被转发的消息的发送者名称，被转发的消息的消息链
static func init(message_id:int,sender_id:int=-1,time:int=0,sender_name:String="",message_chain:MessageChain=null)->ForwardMessageNode:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->ForwardMessageNode:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取此实例对应的消息的发送者的ID
func get_sender_id()->int:
	return 0
	

## 设置此实例对应的消息的发送者的ID
func set_sender_id(id:int)->void:
	return
	

## 获取此实例对应的消息的发送时间戳
func get_timestamp()->int:
	return 0
	

## 设置此实例对应的消息的发送时间戳	
func set_timestamp(time:int)->void:
	return
	

## 获取此实例对应的消息的发送者的名称
func get_sender_name()->String:
	return ""
	

## 设置此实例对应的消息的发送者的名称
func set_sender_name(name:int)->void:
	return
	

## 获取此实例对应的消息的消息链实例
func get_message_chain()->MessageChain:
	return null
	

## 设置此实例对应的消息的消息链实例	
func set_message_chain(msg_chain:MessageChain)->void:
	return


## 获取此实例对应的消息的ID
func get_message_id()->int:
	return 0
	

## 设置此实例对应的消息的ID	
func set_message_id(id:int)->void:
	return
