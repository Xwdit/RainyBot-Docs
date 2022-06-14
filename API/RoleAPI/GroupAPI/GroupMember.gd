extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能
##
## @desc:
##     这是RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能
##     绝大部分与群组中某位成员相关的操作都可以通过此类来进行
##


class_name GroupMember #定义类名为GroupMember，请勿进行改动


## 这是代表了群成员权限的枚举，在进行权限相关操作时可在转为整数后用于对比
## 如"get_permission() == int(GroupMember.Permission.ADMINISTRATOR)"可判断群成员是否为管理员
enum Permission{
	MEMBER, ## 代表权限为群聊中的普通成员
	ADMINISTRATOR, ## 代表权限为群聊中的管理员
	OWNER ## 代表权限为群聊中的群主
}


## 手动构造一个GroupMember类的实例，用于主动进行与群成员的交互时使用
## 需要传入的参数分别为群成员所属群聊的ID(群号)，群成员自身的ID
static func init(group_id:int,member_id:int)->GroupMember:
	return null


## 通过机器人协议后端的元数据字典构造一个GroupMember类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupMember:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary):
	return


## 获取群成员实例的ID
func get_id()->int:
	return 0


## 获取群成员实例在群聊中的名称(群昵称)，若为手动构造的实例，将始终返回空字符串
func get_name()->String:
	return ""
	

## 获取群成员实例在群聊中的特别称号(群荣誉)，若为手动构造的实例，将始终返回空字符串
func get_special_title()->String:
	return ""
	

## 获取群成员实例在群聊中的权限，将返回一个对应Permission枚举的整数值
## 若为手动构造的实例，将始终返回0
func get_permission()->int:
	return 0
	

## 判断群成员实例的类型是否为指定的类型	
func is_permission(perm:int)->bool:
	return false
	

## 获取群成员实例加入其所在群聊的时间戳，若为手动构造的实例，将始终返回0
func get_join_timestamp()->int:
	return 0
	

## 获取群成员实例在对应群聊中上次发言的时间戳，若为手动构造的实例，将始终返回0
func get_last_speak_timestamp()->int:
	return 0
	

## 获取群成员实例在对应群聊中剩余的禁言时间(秒)，若为手动构造的实例，将始终返回0
func get_mute_time_remaining()->int:
	return 0


## 获取群成员实例所在群聊的Group实例，
## 若为群成员为手动构造的实例，则返回的Group实例也等同于使用Group.init()手动构造的实例
func get_group()->Group:
	return null


## 更改群成员实例在其对应群聊中的名称(群昵称)
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func change_name(new_name:String)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 更改群成员实例在其对应群聊中的特别称号(群荣誉)
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func change_special_title(new_title:String)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 开关群成员实例在其对应群聊中的管理员权限，机器人需要为群主才可执行
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态	
func toggle_admin(enabled:bool)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 将群成员实例移出其所在的对应群聊，机器人需要为管理员或群主才可执行
## 可传入一个消息参数作为移出群聊的理由，但可能不会被显示
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func kick(message:String="")->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 将群成员实例在其所在的群聊中禁言指定的秒数，机器人需要为管理员或群主才可执行
## 若不传入秒数则默认为禁言1800秒
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func mute(time:int=1800)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 将群成员实例在其所在的群聊中解除禁言，机器人需要为管理员或群主才可执行
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态	
func unmute()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 通过群临时会话，向群成员实例私聊发送单条继承于Message类的消息的实例
## 同时可指定一个需要引用回复的消息ID
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func send_message(msg,quote_msgid:int=-1)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 通过群临时会话，向群成员实例私聊发送一个戳一戳消息
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func send_nudge()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
