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


## 获取机器人后端账号的头像的图像链接，通常为jpg格式
static func get_avatar_url()->String:
	return ""


## 获取当前机器人账号的好友列表，需要与await关键词配合使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
static func get_friend_list(timeout:float=-INF)->MemberList:
	return null
	

## 获取当前机器人账号的群组列表，需要与await关键词配合使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
static func get_group_list(timeout:float=-INF)->GroupList:
	return null


## 获取当前机器人账号的资料卡，需要与await关键词配合使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
static func get_profile(timeout:float=-INF)->MemberProfile:
	return null
