extends MessageAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的缓存消息类，通常代表一个对应实例，用于储存从机器人后端缓存中读取的消息的相关信息
##
## 这是RainyBot的缓存消息类，通常代表一个对应实例，用于储存从机器人后端缓存中读取的消息的相关信息
## [br]此类实例中通常储存了消息对应的消息链，以及消息对应的发送者实例等信息
##


class_name CacheMessage #定义类名为CacheMessage，请勿进行改动


## 通过机器人协议后端的元数据字典构造一个CacheMessage类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->CacheMessage:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取缓存消息实例中储存的消息对应的消息链
func get_message_chain()->MessageChain:
	return null
	

## 获取缓存消息实例中储存的消息对应的发送者实例
## [br][br]返回的类型不定，可能返回Member,GroupMember或OtherClient类的实例
func get_sender()->RoleAPI:
	return null
