extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的At全体成员消息类，通常代表一个对应实例，此类消息仅适用于群聊
##
## @desc:
##     这是RainyBot的At全体成员消息类，通常代表一个对应实例，此类消息仅适用于群聊
##     此类实例代表在消息中At了全体成员，你也可以主动构建此类实例以便进行此操作
##


class_name AtAllMessage #定义类名为AtAllMessage，请勿进行改动


## 手动构造一个AtAllMessage类的实例，以便在消息中At全体成员
static func init()->AtAllMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个AtAllMessage类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->AtAllMessage:
	return null


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[@全体成员]"
