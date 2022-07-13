extends OtherClientEvent #继承其它客户端事件类，请勿随意改动


## RainyBot的其它客户端离线事件类，其实例记录了与一次其它客户端离线事件相关的数据
class_name OtherClientOfflineEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->OtherClientOfflineEvent:
	return null
