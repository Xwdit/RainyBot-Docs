extends EventAPI #继承MessageAPI类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的事件类，各种事件类型将直接或间接继承此类
class_name Event


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return
