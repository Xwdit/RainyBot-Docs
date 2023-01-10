类: ForwardMessageNodeList

继承自: MessageAPI
 
RainyBot的转发消息列表类，通常代表一个对应实例，储存了某条合并转发消息中的所有单条转发消息

描述:

这是RainyBot的转发消息列表类，通常代表一个对应实例，储存了某条合并转发消息中的所有单条转发消息 [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有单条转发消息(将返回ForwardMessageNode类实例)

方法:

	static ForwardMessageNodeList init ( Variant msg_node )

	手动构造一个ForwardMessageNodeList类的实例，以便将多个单条转发消息进行合并转发 
	
	传入的参数可以是以下类型: 
	- 单条转发消息实例(将其作为列表中的第一个单条转发消息实例) 
	- 包含单条转发消息实例的数组(将按照上方规则将数组中的实例依次添加至此转发列表)


	static ForwardMessageNodeList init_meta ( Array arr )

	通过机器人协议后端的元数据数组构造一个此类的实例，仅当你知道自己在做什么时才使用


	Array get_metadata ( )

	获取实例中的元数据数组，仅当你知道自己在做什么时才使用


	void set_metadata ( Array arr )

	使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用


	ForwardMessageNode get_from_index ( int index )

	根据指定的序号来从此实例中获取对应的ForwardMessageNode实例 
	
	若序号不存在则返回null


	int get_size ( )

	获取转发消息列表中单条转发消息的总数


	ForwardMessageNodeList append ( Variant msg_node )

	将参数中的内容添加到此消息链实例中，并返回此消息链实例自身，以便于进行连续操作 
	
	传入的参数可以是以下类型: 
	- 单条转发消息实例(将其作为列表中的第一个单条转发消息实例) 
	- 包含单条转发消息实例的数组(将按照上方规则将数组中的实例依次添加至此转发列表)


	ForwardMessageNode get_from_message_id ( int message_id )

	基于指定的消息ID来查找并返回第一个找到的单条转发消息实例


	ForwardMessageNode get_from_sender_id ( int sender_id )

	基于指定的发送者ID来查找并返回第一个找到的单条转发消息实例



