extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景
##
## @desc:
##     这是RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景
##     此类实例中储存了App消息的代码原文本，你也可以基于指定APP消息代码文本来构建一个此类实例
##


class_name AppMessage #定义类名为AppMessage，请勿进行改动


## 基于指定的App消息代码文本来手动构造一个AppMessage类的实例
static func init(text:String)->AppMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个AppMessage类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->AppMessage:
	return null


## 获取实例中储存的App消息代码文本
func get_app_text()->String:
	return ""
	

## 更改实例中储存的App消息代码文本
func set_app_text(text:String):
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[APP]"
