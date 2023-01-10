类: QuoteMessage

继承自: Message
 
RainyBot的引用回复消息类，其实例记录了与一个引用回复消息相关的各类数据

方法:

	static QuoteMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_message_id ( )

	获取被引用回复的原消息ID


	int get_group_id ( )

	获取被引用回复的原消息所在的群组的ID(若不位于群组中则返回0)


	int get_sender_id ( )

	获取被引用回复的原消息的发送者的ID


	int get_target_id ( )

	获取被引用回复的原消息的接收者(或接收群组)的ID


	MessageChain get_message_chain ( )

	获取被引用回复的原消息的消息链实例


	String get_as_text ( )

	将此实例获取为字符串的形式



