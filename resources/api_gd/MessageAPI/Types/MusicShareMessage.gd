extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的音乐分享消息类，其实例记录了与一个音乐分享消息相关的各类数据
class_name MusicShareMessage


## 基于指定的参数来手动构造一个MusicShareMessage类的实例
## [br][br]需要的参数从左到右分别为: 类型，标题，概括，跳转链接，封面图像链接，音乐文件链接，简介
static func init(kind:String,title:String,summary:String,jump_url:String,picture_url:String,music_url:String,brief:String)->MusicShareMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MusicShareMessage:
	return null


## 获取此实例对应的分享类型
func get_share_kind()->String:
	return ""
	

## 设置此实例对应的分享类型
func set_share_kind(text:String)->void:
	return
	

## 获取此实例对应的分享标题
func get_share_title()->String:
	return ""
	

## 设置此实例对应的分享标题
func set_share_title(text:String)->void:
	return
	

## 获取此实例对应的分享概括
func get_share_summary()->String:
	return ""
	

## 设置此实例对应的分享概括	
func set_share_summary(text:String)->void:
	return
	

## 获取此实例对应的分享跳转链接
func get_share_jump_url()->String:
	return ""
	

## 设置此实例对应的分享跳转链接
func set_share_jump_url(text:String)->void:
	return
	

## 获取此实例对应的分享封面图像链接
func get_share_picture_url()->String:
	return ""
	

## 设置此实例对应的分享封面图像链接
func set_share_picture_url(text:String)->void:
	return
	

## 获取此实例对应的分享音乐文件链接
func get_share_music_url()->String:
	return ""
	

## 设置此实例对应的分享音乐文件链接
func set_share_music_url(text:String)->void:
	return
	

## 获取此实例对应的分享简介
func get_share_brief()->String:
	return ""
	

## 设置此实例对应的分享简介	
func set_share_brief(text:String)->void:
	return


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[音乐分享:"+get_share_title()+"]"
