类: ForwardMessage

继承自: Message
 
RainyBot的转发消息类，其实例记录了与一个转发消息相关的各类数据

方法:

	static ForwardMessage init ( ForwardMessageNodeList node_list )

	基于指定的转发消息列表实例来手动构造一个ForwardMessage实例


	static ForwardMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	ForwardMessageNodeList get_node_list ( )

	获取此实例对应的转发消息列表实例


	void set_node_list ( ForwardMessageNodeList node_list )

	设置此实例对应的转发消息列表实例



