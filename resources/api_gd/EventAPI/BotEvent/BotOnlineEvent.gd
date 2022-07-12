extends BotEvent #继承Bot事件类，请勿随意改动


## RainyBot的机器人账号登录成功事件类，其实例记录了一次机器人账号登录成功事件的相关数据
class_name BotOnlineEvent


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->BotOnlineEvent:
	return null
