extends MessageEvent #继承消息事件类，请勿随意改动


## RainyBot的群临时消息事件类，其实例记录了与一次群临时消息事件相关的数据
class_name TempMessageEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->TempMessageEvent:
	return null


## 获取消息事件对应的发送者的群组成员实例
func get_sender()->GroupMember:
	return null


## 获取消息事件所对应的来源群组的实例
func get_group()->Group:
	return null
