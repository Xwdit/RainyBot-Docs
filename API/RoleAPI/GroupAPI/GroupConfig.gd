extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


##
## RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息
##
## 这是RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息
## [br]对此类实例中内容的更改不会直接影响群组的配置，需要在更改完成后于群组实例中将此类实例设定为群组配置
##


class_name GroupConfig #定义类名为GroupConfig，请勿进行改动


## 通过机器人协议后端的元数据字典构造一个GroupConfig类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupConfig:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取群组配置实例中储存的群名称
func get_name()->String:
	return ""
	

## 获取群组配置实例中储存的入群公告
func get_announcement()->String:
	return ""
	

## 获取群组配置实例中储存的坦白说启用状态
func get_confess_talk()->bool:
	return false
	

## 获取群组配置实例中储存的允许邀请入群启用状态	
func get_allow_member_invite()->bool:
	return false
	

## 获取群组配置实例中储存的自动入群审批启用状态
func get_auto_approve()->bool:
	return false
	

## 获取群组配置实例中储存的匿名聊天启用状态
func get_anonymous_chat()->bool:
	return false
	

## 更改群组配置实例中储存的群名称
func set_name(name:String)->void:
	return
	

## 更改群组配置实例中储存的入群公告
func set_announcement(text:String)->void:
	return
	

## 更改群组配置实例中储存的坦白说启用状态
func set_confess_talk(enabled:bool)->void:
	return


## 更改群组配置实例中储存的允许邀请入群启用状态	
func set_allow_member_invite(enabled:bool)->void:
	return
	

## 更改群组配置实例中储存的自动入群审批启用状态
func set_auto_approve(enabled:bool)->void:
	return
	

## 更改群组配置实例中储存的匿名聊天启用状态
func set_anonymous_chat(enabled:bool)->void:
	return
