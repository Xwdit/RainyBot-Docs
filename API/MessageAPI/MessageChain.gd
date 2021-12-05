extends MessageAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的消息链类，通常代表一个对应实例，为多个不同类型的消息类实例依序拼接而成的单条消息
##
## @desc:
##     这是RainyBot的消息链类，通常代表一个对应实例，为多个不同类型的消息类实例依序拼接而成的单条消息
##     例如当需要在一条消息中同时AT多个对象并附上一段文字，就需要构造并发送一个由多个AT类和一个文本类消息实例所组成的消息链
##     你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有消息实例(将返回Message子类的实例)
##


class_name MessageChain #定义类名为MessageChain，请勿进行改动


## 手动构造一个MessageChain类的实例，以便将多个消息类实例作为单条消息发送
## 所需的参数为所构造的消息链中将包含的的第一个消息类实例
static func init(msg)->MessageChain:
	return null


## 基于已知的消息ID手动构造一个MessageChain类的实例，以便对此ID关联的消息进行如撤回一类的操作
static func init_id(msg_id:int)->MessageChain:
	return null


## 通过机器人协议后端的元数据数组构造一个MessageChain类的实例，仅当你知道自己在做什么时才使用
static func init_meta(arr:Array)->MessageChain:
	return null


## 获取实例中的元数据数组，仅当你知道自己在做什么时才使用
func get_metadata()->Array:
	return []


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(arr:Array):
	return


## 在此消息链实例中添加一个Message子类实例，并返回此消息链实例自身，以便于进行连续操作
## 可以进行如"MessageChain.init(TextMessage.init("你好")).append(AtMessage.init(12345)).append(AtMessage.init(45678))"一类的操作
func append(msg)->MessageChain:
	return null


## 获取消息链实例中的消息实例的总数	
func get_size()->int:
	return 0


## 根据指定的序号来从消息链实例中获取对应的Message子类实例
## 若序号不存在则返回null
func get_message(index:int)->Message:
	return null


## 根据指定的条件，来从消息链实例中获取由符合条件的消息类实例组成的数组
## 可以传入的参数从左到右分别为:
## 所需的Message子类的列表(例如需要从消息链中获取所有的At类消息与Text类消息，则为[AtMessage,TextMessage]，为空将获取所有消息)
## 是否为排除模式(若为true，则将获取除上个参数的列表以外的所有消息类实例)
## 获取的消息数量的上限(若不为-1，则获取到的消息实例总数到达上限后将直接返回对应数组)
func get_message_array(types=[],exclude:bool=false,max_size:int=-1)->Array:
	return []


## 根据指定的条件，来从消息链实例中获取由符合条件的消息类实例转换并拼接而成的单个字符串
## 转换为字符串的具体行为请参见不同Message子类中的get_as_text()方法
## 可以传入的参数从左到右分别为:
## 所需的Message子类的列表(例如需要从消息链中获取所有的At类消息与Text类消息，则为[AtMessage,TextMessage]，为空将获取所有消息)
## 是否为排除模式(若为true，则将获取除上个参数的列表以外的所有消息类实例)
func get_message_text(types=[],exclude:bool=false)->String:
	return ""


## 获取消息链实例的消息ID，若为手动且不基于ID构造的消息链实例，则始终返回0
func get_message_id()->int:
	return 0


## 获取消息链实例的发送时间戳，若为手动构造的消息链实例，则始终返回0
func get_message_timestamp()->int:
	return 0


## 判断消息链实例中是否存在指定类型的消息类实例
func has_message_type(type:GDScript)->bool:
	return false


## 将消息链实例对应的消息设为群精华消息，机器人需要为消息对应群聊的管理员或群主
## 若为手动且不基于ID构造的消息链实例，或对应的消息不是群聊消息，则此操作无效
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func set_essence()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 将消息链实例对应的消息撤回，多数情况下需要为发送时间两分钟以内的消息
## 若为群聊消息，则机器人需要为消息对应群聊的管理员或群主
## 若为手动且不基于ID构造的消息链实例，或对应的消息不是发自机器人的消息或群聊消息，则此操作无效
## 配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态
func recall()->BotRequestResult:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于快捷判断消息链实例中是否包含目标为机器人的AT类消息实例
func is_at_bot()->bool:
	return false