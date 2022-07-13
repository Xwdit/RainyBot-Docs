extends RequestEvent #继承请求事件类，请勿随意改动


## RainyBot的新成员入群请求事件类，其实例记录了与一次新成员入群请求事件相关的数据
class_name MemberJoinRequestEvent


## 可用于回应请求的回应类型
enum RespondType{
	ACCEPT, ## 允许新成员入群
	REFUSE, ## 拒绝新成员入群
	IGNORE, ## 忽略新成员的入群请求
	REFUSE_BLACKLIST, ## 拒绝新成员入群并加入黑名单
	IGNORE_BLACKLIST ## 忽略新成员的入群请求并加入黑名单
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->MemberJoinRequestEvent:
	return null


## 获取事件对应的新成员希望加入的群的名称
func get_group_name()->String:
	return ""
