extends MessageAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类
##
## 这是RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类
## [br]多数消息相关操作都密切依赖于此类及其子类(构造/发送/获取消息或消息链等)
##


class_name Message #定义类名为Message，请勿进行改动


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 将此消息类实例获取为字符串，具体行为请参见继承此类的每个子类
func get_as_text()->String:
	return ""
