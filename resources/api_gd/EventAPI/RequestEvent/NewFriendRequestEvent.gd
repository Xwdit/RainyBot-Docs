extends RequestEvent #继承请求事件类，请勿随意改动


## RainyBot的添加好友请求事件类，其实例记录了与一次添加好友请求事件相关的数据
class_name NewFriendRequestEvent


## 可用于回应请求的回应类型
enum RespondType{
	ACCEPT, ## 接受好友添加请求
	REFUSE, ## 拒绝好友添加请求
	REFUSE_BLACKLIST ## 拒绝好友添加请求并加入黑名单
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->NewFriendRequestEvent:
	return null
