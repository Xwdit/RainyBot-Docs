extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的群公告类，其实例记录了一个将被用于发送的群公告的相关信息
##
## 这是RainyBot的群公告类，其实例记录了一个将被用于发送的群公告的相关信息
## [br]此类实例通常需要被手动构造，以用于向某个特定群组中发送一条群公告
class_name GroupAnnounce


## 基于指定的内容文本构造一个群公告实例，您可以稍后通过实例中的其它函数来设置此公告的更多属性
static func init(content:String)->GroupAnnounce:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupAnnounce:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 设置公告实例中的公告内容文本，此项为此实例可被正常发送的必要条件，因此不可为空
func set_content(text:String)->void:
	return


## 获取公告实例中的公告内容文本
func get_content()->String:
	return ""


## 设置此公告实例是否向新成员展示
func set_send_to_new_member(enabled:bool)->void:
	return


## 获取此公告实例是否向新成员展示
func is_send_to_new_member()->bool:
	return false
	

## 设置此公告实例是否在公告列表中置顶
func set_pinned(enabled:bool)->void:
	return


## 获取此公告实例是否在公告列表中置顶
func is_pinned()->bool:
	return false
	

## 设置此公告实例是否显示引导群员修改名片的选项
func set_show_edit_card(enabled:bool)->void:
	return


## 获取此公告实例是否显示引导群员修改名片的选项
func is_show_edit_card()->bool:
	return false
	

## 设置此公告实例是否使用弹窗来展示
func set_show_popup(enabled:bool)->void:
	return


## 获取此公告实例是否使用弹窗来展示
func is_show_popup()->bool:
	return false
	

## 设置此公告实例是否需要群成员进行确认
func set_require_confirm(enabled:bool)->void:
	return


## 获取此公告实例是否需要群成员进行确认
func is_require_confirm()->bool:
	return false


## 设置此公告实例将包含的图像的url链接
func set_image_url(img_url:String)->void:
	return


## 获取此公告实例将包含的图像的url链接
func get_image_url()->String:
	return ""
	

## 设置此公告实例将包含的图像的本地绝对路径
func set_image_path(img_path:String)->void:
	return


## 获取此公告实例将包含的图像的本地绝对路径
func get_image_path()->String:
	return ""
	

## 设置此公告实例将包含的图像的Base64编码
func set_image_base64(img_base64:String)->void:
	return


## 获取此公告实例将包含的图像的Base64编码
func get_image_base64()->String:
	return ""
