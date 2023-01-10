类: NudgeEvent

继承自: ActionEvent
 
RainyBot的戳一戳事件类，记录了聊天中的一个戳一戳事件的相关数据

枚举:

	enum SubjectType

	戳一戳事件发生的上下文位置类型，可以是好友聊天或群聊

		FRIEND = 0
		事件发生在好友聊天中

		GROUP = 1
		事件发生在群组聊天中


方法:

	static NudgeEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_sender_id ( )

	获取戳一戳事件的发送者ID


	int get_subject_id ( )

	获取戳一戳事件发生的上下文ID，例如在群聊中时应为群号


	int get_target_id ( )

	获取戳一戳事件的接收者(目标)的ID


	int get_subject_type ( )

	获取戳一戳事件发生的上下文位置类型，可用类型请参见上方的SubjectType枚举


	bool is_subject_type ( int type )

	用于判断戳一戳事件是否发生在指定的上下文位置类型


	String get_action_text ( )

	获取戳一戳事件的动作文本


	String get_suffix_text ( )

	获取戳一戳事件的后缀文本



