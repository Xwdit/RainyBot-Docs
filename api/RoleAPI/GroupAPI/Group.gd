extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能
##
## 这是RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能
## [br]绝大部分与群聊直接相关的操作都可以通过此类来进行
##


class_name Group #定义类名为Group，请勿进行改动


## 手动构造一个Group类的实例，用于主动进行与群组的交互时使用
## [br][br]需要传入群聊的ID(群号)作为参数，以便进行各类操作
static func init(group_id:int)->Group:
	return null
	

## 通过机器人协议后端的元数据字典构造一个Group类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->Group:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取群聊实例的名称(群名称)，若为手动构造的实例，将始终返回空字符串
func get_name()->String:
	return ""


## 获取群聊实例的ID(群号)
func get_id()->int:
	return 0


## 获取机器人在群聊实例中的权限，若为手动构造的实例，将始终返回0
## [br][br]权限列表请参见GroupMember类中的Permission枚举
func get_bot_permission()->int:
	return 0


## 获取群聊实例对应的群头像的图像链接
func get_avatar_url()->String:
	return ""


## 获取群聊实例中指定成员ID的GroupMember实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_member(member_id:int,timeout:float=-INF)->GroupMember:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 获取群聊实例中所有成员列表的GroupMemberList实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_member_list(timeout:float=-INF)->GroupMemberList:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 获取群聊实例中指定成员ID相关资料的MemberProfile实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_member_profile(member_id:int,timeout:float=-INF)->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于切换群聊实例的全员禁言状态，所需的参数为是否启用全员禁言
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func toggle_mute_all(enabled:bool,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 用于获取与群聊实例的各类配置相关的GroupConfig实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_group_config(timeout:float=-INF)->GroupConfig:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于将群聊实例的各类配置替换为指定的GroupConfig实例中的配置
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func set_group_config(config:GroupConfig,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于向群聊实例发送消息，同时可指定一个需要引用回复的消息ID
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]传入的第一个参数可以是以下类型:
## [br]- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送)
## [br]- 单个消息实例(将其作为消息链中的唯一消息实例发送)
## [br]- 消息链实例(将其内容复制并发送)
## [br]- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送)
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func send_message(msg,quote_msgid:int=-1,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 用于在群聊实例中向指定的成员ID发送一个戳一戳消息
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func send_nudge(member_id:int,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于让机器人主动退出群聊实例所对应的群聊
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func quit(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
