extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的转发消息类，其实例记录了与一个转发消息相关的各类数据
class_name ForwardMessage


## 基于指定的转发消息列表实例来手动构造一个ForwardMessage实例
static func init(node_list:ForwardMessageNodeList)->ForwardMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->ForwardMessage:
	return null


## 获取此实例对应的转发消息列表实例
func get_node_list()->ForwardMessageNodeList:
	return null
	

## 设置此实例对应的转发消息列表实例
func set_node_list(node_list:ForwardMessageNodeList)->void:
	return
	
