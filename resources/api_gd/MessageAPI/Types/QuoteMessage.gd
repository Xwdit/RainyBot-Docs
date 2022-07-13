extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的引用回复消息类，其实例记录了与一个引用回复消息相关的各类数据
class_name QuoteMessage


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->QuoteMessage:
	return null


## 获取被引用回复的原消息ID
func get_message_id()->int:
	return 0
	

## 获取被引用回复的原消息所在的群组的ID(若不位于群组中则返回0)	
func get_group_id()->int:
	return 0


## 获取被引用回复的原消息的发送者的ID
func get_sender_id()->int:
	return 0
	

## 获取被引用回复的原消息的接收者(或接收群组)的ID
func get_target_id()->int:
	return 0
	

## 获取被引用回复的原消息的消息链实例
func get_message_chain()->MessageChain:
	return null
	

## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[引用回复:"+str(get_message_id())+"]"
