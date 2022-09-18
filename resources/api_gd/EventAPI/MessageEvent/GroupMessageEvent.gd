extends MessageEvent #继承消息事件类，请勿随意改动


## RainyBot的群组消息事件类，其实例记录了与一次群组消息事件相关的数据
class_name GroupMessageEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupMessageEvent:
	return null


## 获取消息事件对应的发送者的群组成员实例
func get_sender()->GroupMember:
	return null


## 获取消息事件所对应的群组的实例
func get_group()->Group:
	return null


## 获取消息事件所对应的群组的ID
func get_group_id()->int:
	return 0


## 撤回事件所对应的群消息，机器人需要在对应群组中为管理员或群组权限才能执行成功
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func recall(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	

## 将事件所对应的群消息设置为精华消息，机器人需要在对应群组中为管理员或群组权限才能执行成功
## [br][br]配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
## [br][br]可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间
func set_essence(timeout:float=-INF)->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 判断事件所对应的群消息中是否AT了机器人
func is_at_bot()->bool:
	return false
