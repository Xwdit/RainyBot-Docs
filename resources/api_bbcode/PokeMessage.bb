类: PokeMessage

继承自: Message
 
RainyBot的戳一戳消息类，其实例记录了与一个戳一戳消息相关的各类数据

枚举:

	enum PokeType

	戳一戳消息的类型

		POKE = 0
		戳一戳

		SHOW_LOVE = 1
		比心

		LIKE = 2
		点赞

		HEART_BROKEN = 3
		心碎

		SIX_SIX_SIX = 4
		六六六

		FANG_DA_ZHAO = 5
		放大招


方法:

	static PokeMessage init ( int type )

	基于指定的戳一戳类型来手动构造一个PokeMessage类的实例


	static PokeMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	int get_poke_type ( )

	获取此实例对应的戳一戳类型


	void set_poke_type ( int type )

	设置此实例对应的戳一戳类型


	bool is_poke_type ( int type )

	判断此实例是否为指定的戳一戳类型


	String get_as_text ( )

	将此实例获取为字符串的形式



