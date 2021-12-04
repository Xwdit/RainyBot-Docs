extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊
##
## @desc:
##     这是RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊
##     此类实例代表在消息中At了某群组成员，你也可以主动构建此类实例以便进行此操作
##


class_name AtMessage #定义类名为AtMessage，请勿进行改动


## 手动构造一个AtMessage类的实例，以便在消息中At某群组成员
## 需要传入想要At的群组成员的ID作为参数
static func init(target_id:int)->AtMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个AtMessage类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->AtMessage:
	return null


## 获取实例中储存的被At的群组成员的ID
func get_target_id()->int:
	return 0


## 更改实例中储存的想要At的群组成员的ID
func set_target_id(target_id:int):
	return


## 获取实例中储存的被At的群组成员的显示信息(如@啦啦啦)
## 若为手动构造的实例，将始终返回空字符串
func get_display_text()->String:
	return ""


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return get_display_text()
