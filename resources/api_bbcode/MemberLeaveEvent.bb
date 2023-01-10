类: MemberLeaveEvent

继承自: GroupMemberEvent
 
RainyBot的群成员退群类，其实例记录了与一次群成员退群事件相关的数据

枚举:

	enum ReasonType

	群成员退群的原因

		QUIT = 0
		群成员自行主动退群

		KICK = 1
		群成员被管理员/群主踢出群聊


方法:

	static MemberLeaveEvent init_meta ( Dictionary dic, int reason_type )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	GroupMember get_member ( )

	获取此事件对应的群成员实例


	GroupMember get_operator ( )

	获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是群成员自身


	Group get_group ( )

	获取此事件所发生的群组实例


	int get_reason_type ( )

	获取此事件发生的原因类型，详见上方的ReasonType枚举


	bool is_reason_type ( int reason )

	判断此事件的发生是否为指定的原因类型



