extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的消息链源消息类，其实例记录了某个接收到的消息链的消息ID，发送时间等数据
class_name SourceMessage


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->SourceMessage:
	return null


## 获取此实例对应的消息链的ID
func get_message_id()->int:
	return 0
	

## 获取此实例对应的消息链的发送时间戳	
func get_timestamp()->int:
	return 0


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[消息ID:"+str(get_message_id())+",时间:"+str(get_timestamp())+"]"
