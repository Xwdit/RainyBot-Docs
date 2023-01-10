类: JsonMessage

继承自: Message
 
RainyBot的Json消息类，其实例记录了与一个Json消息相关的各类数据

方法:

	static JsonMessage init ( String text )

	基于指定的文本来手动构造一个JsonMessage类的实例


	static JsonMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	String get_json_text ( )

	获取此实例中对应的JSON文本


	void set_json_text ( String text )

	设置此实例中对应的JSON文本


	String get_as_text ( )

	将此实例获取为字符串的形式



