extends Message #继承Message类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的戳一戳消息类，其实例记录了与一个戳一戳消息相关的各类数据
class_name PokeMessage


## 戳一戳消息的类型
enum PokeType {
	POKE, ## 戳一戳
	SHOW_LOVE, ## 比心
	LIKE, ## 点赞
	HEART_BROKEN, ## 心碎
	SIX_SIX_SIX, ## 六六六
	FANG_DA_ZHAO ## 放大招
}


## 基于指定的戳一戳类型来手动构造一个PokeMessage类的实例
static func init(type:int)->PokeMessage:
	return null


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->PokeMessage:
	return null


## 获取此实例对应的戳一戳类型	
func get_poke_type()->int:
	return 0
	

## 设置此实例对应的戳一戳类型
func set_poke_type(type:int)->void:
	return
	

## 判断此实例是否为指定的戳一戳类型	
func is_poke_type(type:int)->bool:
	return false
	

## 将此实例获取为字符串的形式	
func get_as_text()->String:
	return "[戳一戳]"
