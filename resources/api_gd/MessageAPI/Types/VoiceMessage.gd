extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的语音消息类，其实例记录了与一个语音消息相关的各类数据
class_name VoiceMessage


## 基于指定的语音ID来手动构造一个VoiceMessage类的实例
static func init_id(voice_id:String)->VoiceMessage:
	return null


## 基于指定的音频URL链接来手动构造一个VoiceMessage类的实例
static func init_url(voice_url:String)->VoiceMessage:
	return null


## 基于指定的本地音频路径来手动构造一个VoiceMessage类的实例
static func init_path(voice_path:String)->VoiceMessage:
	return null


## 基于指定的音频Base64编码来手动构造一个VoiceMessage类的实例
static func init_base64(voice_base64:String)->VoiceMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->VoiceMessage:
	return null


 ## 获取此实例对应的语音的ID
func get_voice_id()->String:
	return ""
	

 ## 设置此实例对应的语音的ID	
func set_voice_id(voice_id:String)->void:
	return
	

 ## 获取此实例对应的音频的URL链接
func get_voice_url()->String:
	return ""
	

 ## 设置此实例对应的音频的URL链接
func set_voice_url(voice_url:String)->void:
	return
	

 ## 获取此实例对应的音频的本地路径
func get_voice_path()->String:
	return ""
	

 ## 设置此实例对应的音频的本地路径
func set_voice_path(voice_path:String)->void:
	return
	

 ## 获取此实例对应的音频的Base64编码	
func get_voice_base64()->String:
	return ""
	

 ## 设置此实例对应的音频的Base64编码
func set_voice_base64(voice_base64:String)->void:
	return
	

## 获取此示例对应的语音的长度(以秒为单位)
func get_voice_length()->int:
	return 0


## 将此实例获取为字符串的形式
func get_as_text()->String:
	return "[语音:"+get_voice_id()+"]"
