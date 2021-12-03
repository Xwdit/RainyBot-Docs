extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能
##
## @desc:
##     这是RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能
##     绝大部分与群聊直接相关的操作都可以通过此类来进行
##


class_name Group #定义类名为Group，请勿进行改动


## 手动构造一个Group类的实例，用于主动进行与群组的交互时使用
## 需要传入群聊的ID(群号)作为参数，以便进行各类操作
static func init(group_id:int)->Group:
	return null
	

## 通过机器人协议后端的元数据字典构造一个Group类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->Group:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary):
	return


## 获取群聊实例的名称(群名称)，若为手动构造的实例，将始终返回空字符串
func get_name()->String:
	return ""


## 获取群聊实例的ID(群号)
func get_id()->int:
	return 0


## 获取机器人在群聊实例中的权限，若为手动构造的实例，将始终返回0
## 权限列表请参见GroupMember类中的Permission枚举
## 与返回结果对比时，需要通过int()函数将需要对比的权限枚举转为整数值(如:int(GroupMember.Permission.MEMBER))
func get_bot_permission()->int:
	return 0


## 获取群聊实例中指定成员ID的GroupMember实例，需要配合await关键字使用
func get_member(member_id:int)->GroupMember:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 获取群聊实例中所有成员列表的GroupMemberList实例，需要配合await关键字使用
func get_member_list()->GroupMemberList:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 获取群聊实例中指定成员ID的MemberProfile实例，需要配合await关键字使用
func get_member_profile(member_id:int)->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于切换群聊实例的全员禁言状态，所需的参数为是否启用全员禁言
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func toggle_mute_all(enabled:bool)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 用于获取与群聊实例的各类配置相关的GroupConfig实例，需要配合await关键字使用
func get_group_config()->GroupConfig:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于将群聊实例的各类配置替换为指定的GroupConfig实例中的配置
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func set_group_config(config:GroupConfig)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于向群聊实例发送单条继承于Message类的消息的实例，同时可指定一个需要引用回复的消息ID
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func send_message(msg:Message,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于向群聊实例发送一个MessageChain消息链的实例，同时可指定一个需要引用回复的消息ID
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func send_message_chain(msg_chain:MessageChain,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 用于在群聊实例中向指定的成员ID发送一个戳一戳消息
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func send_nudge(member_id:int)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于让机器人主动退出群聊实例所对应的群聊
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func quit()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
