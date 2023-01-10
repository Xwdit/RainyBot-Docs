类: FileMessage

继承自: Message
 
RainyBot的文件消息类，其实例记录了与一个文件消息相关的各类数据

方法:

	static FileMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	String get_file_id ( )

	获取此消息实例对应的文件的ID


	String get_file_name ( )

	获取此消息实例对应的文件的名称


	int get_file_size ( )

	获取此消息实例对应的文件的大小


	String get_as_text ( )

	将此实例获取为字符串的形式



