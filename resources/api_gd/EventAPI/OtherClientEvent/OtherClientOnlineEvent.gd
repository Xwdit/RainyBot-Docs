extends OtherClientEvent #继承其它客户端事件类，请勿随意改动


## RainyBot的其它客户端上线事件类，其实例记录了与一次其它客户端上线事件相关的数据
class_name OtherClientOnlineEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->OtherClientOnlineEvent:
	return null


## 获取事件对应的其它客户端的详细设备类型ID
func get_kind_id()->int:
	return 0
