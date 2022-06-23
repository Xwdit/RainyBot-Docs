extends MemberAPI #继承MemberAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能
##
## 这是RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能
## [br]绝大部分与好友/单向好友(陌生人)直接相关的操作都可以通过此类来进行
##


class_name Member #定义类名为Member，请勿进行改动


## 这是代表了个体成员类型的枚举，在进行类型判断相关操作时可在转为整数后用于对比
## [br][br]如"get_role() == Member.Role.FRIEND"可判断个体成员是否为好友
enum Role{
	FRIEND, ## 代表个体成员的类型为好友
	STRANGER ## 代表个体成员的类型为单向好友(陌生人)
}


## 手动构造一个Member类的实例，用于主动进行与个体成员的交互时使用
## [br][br]需要传入的参数分别为个体成员的ID，个体成员的类型(可选，默认为Member.Role.FRIEND)
static func init(member_id:int,role:int=Role.FRIEND)->Member:
	return null
	

## 通过机器人协议后端的元数据字典构造一个Member类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary,role:int=Role.FRIEND)->Member:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取个体成员实例的类型，将返回一个对应Role枚举的整数值
## [br][br]若为手动构造的实例，将始终返回0
func get_role()->int:
	return 0


## 设置个体成员实例的类型
func set_role(role:int)->void:
	return


## 判断个体成员实例是否为某类型
func is_role(role:int)->bool:
	return false


## 获取个体成员实例的ID
func get_id()->int:
	return 0


## 获取个体成员实例的名称(昵称)，若为手动构造的实例，将始终返回空字符串
func get_name()->String:
	return ""
	

## 获取Bot对个体成员实例的备注，若为手动构造的实例，将始终返回空字符串
func get_remark()->String:
	return ""
	

## 获取个体成员实例对应账号的头像的图像链接，通常为jpg格式
func get_avatar_url()->String:
	return ""


## 获取个体成员实例相关资料的MemberProfile实例，需要配合await关键字使用
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func get_profile(timeout:float=-INF)->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 向个体成员实例发送消息，同时可指定一个需要引用回复的消息ID
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


## 向个体成员实例发送一个戳一戳消息
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func send_nudge(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 解除与个体成员实例的好友/单向好友关系
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func delete_friend(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
