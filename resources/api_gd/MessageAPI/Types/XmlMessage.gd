extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的Xml消息类，其实例记录了与一个Xml消息相关的各类数据
class_name XmlMessage


## 基于指定的文本来手动构造一个XmlMessage类的实例
static func init(text:String)->XmlMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->XmlMessage:
	return null


## 获取此实例中对应的Xml文本
func get_xml_text()->String:
	return ""
	

## 设置此实例中对应的Xml文本	
func set_xml_text(text:String)->void:
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[Xml]"
