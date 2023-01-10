类: MarketFaceMessage

继承自: Message
 
RainyBot的商城表情消息类，其实例记录了与一个商城表情消息相关的各类数据

方法:

	static MarketFaceMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_face_id ( )

	获取实例对应的商城表情的ID


	String get_face_name ( )

	获取实例对应的商城表情的名称


	String get_as_text ( )

	将此实例获取为字符串的形式



