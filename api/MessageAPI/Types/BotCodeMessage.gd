extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的BotCode消息类，通常代表一个对应实例，可用于快捷发送一段包含多种类型的消息
##
## 这是RainyBot的BotCode消息类，通常代表一个对应实例，可用于快捷发送一段包含多种类型的消息
## [br]此类实例通常不会出现在消息链中，而是用于主动构建此类实例以便快捷发送消息
##


class_name BotCodeMessage #定义类名为BotCodeMessage，请勿进行改动


## 基于包含BotCode的文本来构造BotCodeMessage的实例，以便快捷发送复杂消息
static func init(text:String)->BotCodeMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个BotCodeMessage类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->BotCodeMessage:
	return null


## 获取实例中储存的BotCode文本
func get_code_text()->String:
	return ""
	

## 更改实例中储存的BotCode文本	
func set_code_text(text:String)->void:
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return get_code_text()
