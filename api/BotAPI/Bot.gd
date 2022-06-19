extends BotAPI #继承自BotAPI类


## RainyBot的Bot类，负责处理与当前使用的机器人后端账号相关的各类功能
class_name Bot


## 获取当前正在使用的机器人后端账号
static func get_id()->int:
	return -1
	

## 判断与机器人后端是否已建立连接
static func is_bot_connected()->bool:
	return false
	

## 获取已通过机器人后端发送的消息的数量
static func get_sent_message_count()->int:
	return 0


## 获取已通过机器人后端接收到的群聊消息的数量
static func get_group_message_count()->int:
	return 0
	

## 获取已通过机器人后端接收到的私聊消息的数量	
static func get_private_message_count()->int:
	return 0


## 获取当前机器人账号的好友列表，需要与await关键词配合使用
static func get_friend_list()->MemberList:
	return null
	

## 获取当前机器人账号的群组列表，需要与await关键词配合使用
static func get_group_list()->GroupList:
	return null


## 获取当前机器人账号的资料卡，需要与await关键词配合使用
static func get_profile()->MemberProfile:
	return null


## 从当前机器人账号的历史消息缓存中获取指定id的缓存消息，需要与await关键词配合使用
static func get_cache_message(msg_id:int)->CacheMessage:
	return null
