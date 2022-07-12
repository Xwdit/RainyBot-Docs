extends Event #继承事件类，请勿随意改动


## RainyBot的Bot自身事件类，协议后端机器人账号自身发生的各类事件通常直接或间接继承此类
class_name BotEvent


## 获取发生事件的机器人ID,通常为当前使用的机器人ID
func get_id()->int:
	return 0
