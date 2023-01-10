类: AppMessage

继承自: Message
 
RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景

描述:

这是RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景 [br]此类实例中储存了App消息的代码原文本，你也可以基于指定APP消息代码文本来构建一个此类实例

方法:

	static AppMessage init ( String text )

	基于指定的App消息代码文本来手动构造一个AppMessage类的实例


	static AppMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个AppMessage类的实例，仅当你知道自己在做什么时才使用


	String get_app_text ( )

	获取实例中储存的App消息代码文本


	void set_app_text ( String text )

	更改实例中储存的App消息代码文本


	String get_as_text ( )

	将此实例获取为字符串的形式



