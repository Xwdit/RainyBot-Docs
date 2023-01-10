类: GroupAllowAnonyChatEvent

继承自: GroupEvent
 
RainyBot的群组匿名聊天允许状态变更类，其实例记录了与一次群组匿名聊天允许状态变更事件相关的数据

方法:

	static GroupAllowAnonyChatEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	bool get_origin_state ( )

	获取变更前的匿名聊天允许状态


	bool get_current_state ( )

	获取变更后当前的匿名聊天允许状态


	GroupMember get_operator ( )

	获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主


	Group get_group ( )

	获取此事件实例所对应的群组实例



