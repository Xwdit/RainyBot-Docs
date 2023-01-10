类: GroupRecallEvent

继承自: GroupEvent
 
RainyBot的群组消息撤回类，其实例记录了与一次群组消息撤回事件相关的数据

方法:

	static GroupRecallEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_sender_id ( )

	获取被撤回的消息的发送者ID


	int get_message_id ( )

	获取被撤回的消息的ID


	int get_message_timestamp ( )

	获取被撤回的消息的发送时间戳


	GroupMember get_operator ( )

	获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是发送者自己


	Group get_group ( )

	获取此事件实例所对应的群组实例



