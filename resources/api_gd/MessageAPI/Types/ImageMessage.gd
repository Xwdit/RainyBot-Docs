extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的图像消息类，其实例记录了与一个图像消息相关的各类数据
class_name ImageMessage


## 基于图像实例缓存并手动构造一个ImageMessage类的实例
static func init(image:Image)->ImageMessage:
	return null


## 基于Gif动图实例缓存并手动构造一个ImageMessage类的实例
static func init_gif(gif_image:GifImage)->ImageMessage:
	return null


## 基于指定的图像ID来手动构造一个ImageMessage类的实例
static func init_id(image_id:String)->ImageMessage:
	return null


## 基于指定的URL地址来手动构造一个ImageMessage类的实例
static func init_url(image_url:String)->ImageMessage:
	return null


## 基于指定的本地文件路径来手动构造一个ImageMessage类的实例
static func init_path(image_path:String)->ImageMessage:
	return null


## 基于指定的BASE64编码来手动构造一个ImageMessage类的实例
static func init_base64(image_base64:String)->ImageMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->ImageMessage:
	return null


## 获取此实例对应的图像的ID
func get_image_id()->String:
	return ""
	

## 设置此实例对应的图像的ID
func set_image_id(image_id:String)->void:
	return
	

## 获取此实例对应的图像的URL链接
func get_image_url()->String:
	return ""
	

## 设置此实例对应的图像的URL链接
func set_image_url(image_url:String)->void:
	return
	

## 获取此实例对应的图像的本地路径
func get_image_path()->String:
	return ""
	

## 设置此实例对应的图像的本地路径
func set_image_path(image_path:String)->void:
	return
	

## 获取此实例对应的图像的Base64编码	
func get_image_base64()->String:
	return ""
	

## 设置此实例对应的图像的Base64编码
func set_image_base64(image_base64:String)->void:
	return


## 获取此实例对应的图像的高度
func get_image_height()->int:
	return 0
	

## 获取此实例对应的图像的宽度	
func get_image_width()->int:
	return 0
	

## 获取此实例对应的图像的文件大小
func get_image_size()->float:
	return 0.0


## 获取此实例对应的图像的类型文本
func get_image_type()->String:
	return ""


## 判断此实例对应的图像是否为表情
func is_emoji()->bool:
	return false


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[图片:"+get_image_id()+"]"
