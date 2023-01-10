类: BotLeaveGroupEvent

继承自: GroupBotEvent
 
RainyBot的Bot自身退出群组事件类，记录了Bot退出某个群组相关事件的数据

枚举:

	enum ReasonType

	Bot退出群组的原因类型枚举

		ACTIVE = 0
		Bot主动退出群组

		KICK = 1
		Bot被踢出群组

		DISBAND = 2
		Bot因群解散退出群组


方法:

	static BotLeaveGroupEvent init_meta ( Dictionary dic, int reason_type )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	Member get_operator ( )

	获取造成此事件的成员实例，可能是Bot自身，对应群的管理员，或对应群的群主


	Group get_group ( )

	获取此事件对应的群组的实例


	int get_reason_type ( )

	获取Bot退出群组的原因的类型，可用类型请参见此类的ReasonType枚举


	bool is_reason_type ( int reason )

	用于判断Bot退出群组的原因是否为指定的类型，可用类型请参见此类的ReasonType枚举



