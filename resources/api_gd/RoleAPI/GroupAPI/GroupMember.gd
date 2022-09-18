extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能
##
## 这是RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能
## [br]绝大部分与群组中某位成员相关的操作都可以通过此类来进行
##


class_name GroupMember #定义类名为GroupMember，请勿进行改动


## 这是代表了群成员权限的枚举，在进行权限相关操作时可在转为整数后用于对比
## [br][br]如"get_permission() == GroupMember.Permission.ADMINISTRATOR"可判断群成员是否为管理员
enum Permission{
	MEMBER, ## 代表权限为群聊中的普通成员
	ADMINISTRATOR, ## 代表权限为群聊中的管理员
	OWNER ## 代表权限为群聊中的群主
}


## 手动构造一个GroupMember类的实例，用于主动进行与群成员的交互时使用
## [br][br]需要传入的参数分别为群成员所属群聊的ID(群号)，群成员自身的ID
static func init(group_id:int,member_id:int)->GroupMember:
	return null


## 通过机器人协议后端的元数据字典构造一个GroupMember类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupMember:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
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
## [br][br]若为手动构造的实例，将始终返回0
func get_permission()->int:
	return 0
	

## 获取群成员实例对应账号的头像的图像链接，通常为jpg格式
func get_avatar_url()->String:
	return ""


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
## [br][br]若为群成员为手动构造的实例，则返回的Group实例也等同于使用Group.init()手动构造的实例
func get_group()->Group:
	return null


## 获取记录了群成员实例相关资料的MemberProfile实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_profile(timeout:float=-INF)->MemberProfile:
	return null


## 更改群成员实例在其对应群聊中的名称(群昵称)
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func change_name(new_name:String,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 更改群成员实例在其对应群聊中的特别称号(群荣誉)
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func change_special_title(new_title:String,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 开关群成员实例在其对应群聊中的管理员权限，机器人需要为群主才可执行
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func toggle_admin(enabled:bool,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 将群成员实例移出其所在的对应群聊，机器人需要为管理员或群主才可执行
## [br][br]可传入一个消息参数作为移出群聊的理由，但可能不会被显示
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func kick(message:String="",timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 将群成员实例在其所在的群聊中禁言指定的秒数，机器人需要为管理员或群主才可执行
## [br][br]若不传入秒数则默认为禁言1800秒
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func mute(time:int=1800,timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 将群成员实例在其所在的群聊中解除禁言，机器人需要为管理员或群主才可执行
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态	
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func unmute(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 通过群临时会话，向群成员实例私聊发送消息，同时可指定一个需要引用回复的消息ID
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


## 通过群临时会话，向群成员实例私聊发送一个戳一戳消息
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func send_nudge(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于在群成员实例中将指定ID的消息撤回，仅可撤回机器人发送的消息
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func recall_message(msg_id:int,timeout:float=-INF)->BotRequestResult:
	return null


## 用于在群成员实例中获取指定ID的本地缓存消息，将返回一个[CacheMessage]类的实例
## [br][br]此函数必须配合await关键字进行使用，否则将会发生错误，且无法获取相关的信息
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_cache_message(msg_id:int,timeout:float=-INF)->CacheMessage:
	return null
