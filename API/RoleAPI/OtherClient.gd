extends RoleAPI #继承RoleAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的其它客户端类，代表一个实例，实现了用于与其他客户端进行交互的各类功能
##
## @desc:
##     这是RainyBot的其它客户端类，代表一个实例，实现了用于与其他客户端进行交互的各类功能
##     其他客户端的概念，指如当机器人后端使用手机协议登陆时，平板/PC/智能手表端此时即为其他客户端
##


class_name OtherClient #定义类名为OtherClient，请勿进行改动


## 构造一个OtherClient类的实例，用于主动进行与其他客户端的交互时使用
static func init()->OtherClient:
	return null
	

## 通过机器人协议后端的元数据字典构造一个OtherClient类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->OtherClient:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary):
	return
	

## 获取实例中其他客户端的客户端id
func get_id()->int:
	return 0
	

## 获取实例中其他客户端的平台名(如"Windows")
func get_platform()->String:
	return ""


## 向其它客户端发送单条Message类实例的消息,第二个参数为需要引用回复的消息id(可选)
## 返回一个BotRequestResult类的实例，便于判断执行状态
func send_message(msg:Message,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 向其它客户端发送消息链MessageChain类实例的消息,第二个参数为需要引用回复的消息id(可选)
## 返回一个BotRequestResult类的实例，便于判断执行状态
func send_message_chain(msg_chain:MessageChain,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 向其它客户端发送一个戳一戳消息，返回一个BotRequestResult类的实例，便于判断执行状态
func send_nudge()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
