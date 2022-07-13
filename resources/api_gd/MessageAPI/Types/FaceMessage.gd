extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的表情消息类，其实例记录了与一个表情消息相关的各类数据
class_name FaceMessage


## 用于手动构造一个表情消息实例；若传入的参数为整数，则基于表情ID进行构造；若为字符串，则基于表情名称进行构造
static func init(face)->FaceMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->FaceMessage:
	return null


## 获取此实例对应的表情的ID
func get_face_id()->int:
	return 0


## 设置此实例对应的表情的ID
func set_face_id(face_id:int)->void:
	return


## 获取此实例对应的表情的名称
func get_face_name()->String:
	return ""
	

## 设置此实例对应的表情的名称
func set_face_name(face_name:String)->void:
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[表情:"+get_face_name()+"]"
