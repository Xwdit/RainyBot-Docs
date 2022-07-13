extends RequestEvent #继承请求事件类，请勿随意改动


## RainyBot的邀请入群请求事件类，其实例记录了与一次邀请入群请求事件相关的数据
class_name GroupInviteRequestEvent


## 可用于回应请求的回应类型
enum RespondType{
	ACCEPT, ## 接受入群邀请
	REFUSE ## 拒绝入群邀请
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupInviteRequestEvent:
	return null


## 获取事件对应的被邀请加入的群的名称
func get_group_name()->String:
	return ""
