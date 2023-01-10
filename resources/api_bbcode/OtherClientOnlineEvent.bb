类: OtherClientOnlineEvent

继承自: OtherClientEvent
 
RainyBot的其它客户端上线事件类，其实例记录了与一次其它客户端上线事件相关的数据

方法:

	static OtherClientOnlineEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_kind_id ( )

	获取事件对应的其它客户端的详细设备类型ID



