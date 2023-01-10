类: NewFriendRequestEvent

继承自: RequestEvent
 
RainyBot的添加好友请求事件类，其实例记录了与一次添加好友请求事件相关的数据

枚举:

	enum RespondType

	可用于回应请求的回应类型

		ACCEPT = 0
		接受好友添加请求

		REFUSE = 1
		拒绝好友添加请求

		REFUSE_BLACKLIST = 2
		拒绝好友添加请求并加入黑名单


方法:

	static NewFriendRequestEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用



