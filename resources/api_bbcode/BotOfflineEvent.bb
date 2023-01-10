类: BotOfflineEvent

继承自: BotEvent
 
RainyBot的机器人账号离线事件类，其实例记录了一次机器人账号离线事件的相关数据

枚举:

	enum ReasonType

	机器人账号的离线原因类型的枚举

		ACTIVE = 0
		机器人账号主动离线

		FORCE = 1
		机器人账号被挤下线(如其他客户端登录等情况)

		DROPPED = 2
		机器人账号意外掉线(网络原因或服务器原因等)


方法:

	static BotOfflineEvent init_meta ( Dictionary dic, int reason_type )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_reason_type ( )

	获取机器人离线事件的原因类型，可用类型请参见此类的ReasonType枚举


	bool is_reason_type ( int reason )

	判定机器人离线事件是否是指定类型的原因，可用类型请参见此类的ReasonType枚举



