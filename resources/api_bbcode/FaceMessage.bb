类: FaceMessage

继承自: Message
 
RainyBot的表情消息类，其实例记录了与一个表情消息相关的各类数据

方法:

	static FaceMessage init ( Variant face )

	用于手动构造一个表情消息实例；若传入的参数为整数，则基于表情ID进行构造；若为字符串，则基于表情名称进行构造


	static FaceMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_face_id ( )

	获取此实例对应的表情的ID


	void set_face_id ( int face_id )

	设置此实例对应的表情的ID


	String get_face_name ( )

	获取此实例对应的表情的名称


	void set_face_name ( String face_name )

	设置此实例对应的表情的名称


	String get_as_text ( )

	将此实例获取为字符串的形式



