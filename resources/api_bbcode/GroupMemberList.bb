类: GroupMemberList

继承自: GroupAPI
 
RainyBot的群成员列表类，通常代表一个对应实例，储存了某个群组中所有群成员的列表

描述:

这是RainyBot的群成员列表类，通常代表一个对应实例，储存了某个群组中所有群成员的列表 [br]你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有群成员(将返回GroupMember类实例)

方法:

	static GroupMemberList init_meta ( Array arr )

	通过机器人协议后端的元数据数组构造一个GroupMemberList类的实例，仅当你知道自己在做什么时才使用


	Array get_metadata ( )

	获取实例中的元数据数组，仅当你知道自己在做什么时才使用


	void set_metadata ( Array arr )

	使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用


	GroupMember get_from_index ( int index )

	根据指定的序号来从群成员列表实例中获取对应的GroupMember实例 
	
	若序号不存在则返回null


	GroupMember get_from_id ( int member_id )

	根据指定的群成员ID来从群成员列表实例中获取对应的GroupMember实例 
	
	若群成员ID不存在则返回null


	bool has_member ( int member_id )

	判断群成员列表实例中是否存在指定ID的群成员实例


	int get_size ( )

	获取群成员列表实例中的群成员实例的总数



