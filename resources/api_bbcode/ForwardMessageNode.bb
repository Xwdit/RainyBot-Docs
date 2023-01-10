类: ForwardMessageNode

继承自: MessageAPI
 
这是RainyBot的单条转发消息类，其实例储存了一系列合并转发消息中的单条消息的相关数据

方法:

	static ForwardMessageNode init ( int sender_id=-1, int time=0, String sender_name="", MessageChain message_chain=null )

	基于指定的参数来手动构造一个自定义的ForwardMessageNode类的实例 
	
	需要的参数从左到右分别为: 被转发的消息的发送者ID,被转发的消息的发送时间戳，被转发的消息的发送者名称，被转发的消息的内容消息链


	static ForwardMessageNode init_id ( int message_id )

	基于指定的已存在的消息ID来手动构造一个ForwardMessageNode类的实例


	static ForwardMessageNode init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	Dictionary get_metadata ( )

	获取实例中的元数据字典，仅当你知道自己在做什么时才使用


	void set_metadata ( Dictionary dic )

	使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用


	int get_sender_id ( )

	获取此实例对应的消息的发送者的ID


	void set_sender_id ( int id )

	设置此实例对应的消息的发送者的ID


	int get_timestamp ( )

	获取此实例对应的消息的发送时间戳


	void set_timestamp ( int time )

	设置此实例对应的消息的发送时间戳


	String get_sender_name ( )

	获取此实例对应的消息的发送者的名称


	void set_sender_name ( int name )

	设置此实例对应的消息的发送者的名称


	MessageChain get_message_chain ( )

	获取此实例对应的消息的消息链实例


	void set_message_chain ( MessageChain msg_chain )

	设置此实例对应的消息的消息链实例


	int get_message_id ( )

	获取此实例对应的消息的ID


	void set_message_id ( int id )

	设置此实例对应的消息的ID



