extends MessageAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的转发消息列表类，通常代表一个对应实例，储存了某条合并转发消息中的所有单条转发消息
##
## 这是RainyBot的转发消息列表类，通常代表一个对应实例，储存了某条合并转发消息中的所有单条转发消息
## [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有单条转发消息(将返回ForwardMessageNode类实例)
##
class_name ForwardMessageNodeList


## 手动构造一个ForwardMessageNodeList类的实例，以便将多个单条转发消息进行合并转发
## [br][br]传入的参数可以是以下类型:
## [br]- 单条转发消息实例(将其作为列表中的第一个单条转发消息实例)
## [br]- 包含单条转发消息实例的数组(将按照上方规则将数组中的实例依次添加至此转发列表)
static func init(msg_node)->ForwardMessageNodeList:
	return null


## 通过机器人协议后端的元数据数组构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->ForwardMessageNodeList:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array)->void:
	return


## 根据指定的序号来从此实例中获取对应的ForwardMessageNode实例
## [br][br]若序号不存在则返回null
func get_from_index(index:int)->ForwardMessageNode:
	return null
		

## 获取转发消息列表中单条转发消息的总数 		
func get_size()->int:
	return 0
	

## 将参数中的内容添加到此消息链实例中，并返回此消息链实例自身，以便于进行连续操作
## [br][br]传入的参数可以是以下类型:
## [br]- 单条转发消息实例(将其作为列表中的第一个单条转发消息实例)
## [br]- 包含单条转发消息实例的数组(将按照上方规则将数组中的实例依次添加至此转发列表)
func append(msg_node)->ForwardMessageNodeList:
	return


## 基于指定的消息ID来查找并返回第一个找到的单条转发消息实例
func get_from_message_id(message_id:int)->ForwardMessageNode:
	return null
	

## 基于指定的发送者ID来查找并返回第一个找到的单条转发消息实例
func get_from_sender_id(sender_id:int)->ForwardMessageNode:
	return null
