类: SourceMessage

继承自: Message
 
RainyBot的消息链源消息类，其实例记录了某个接收到的消息链的消息ID，发送时间等数据

方法:

	static SourceMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_message_id ( )

	获取此实例对应的消息链的ID


	int get_timestamp ( )

	获取此实例对应的消息链的发送时间戳


	String get_as_text ( )

	将此实例获取为字符串的形式



