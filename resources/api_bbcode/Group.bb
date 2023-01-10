类: Group

继承自: GroupAPI
 
RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能

描述:

这是RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能 [br]绝大部分与群聊直接相关的操作都可以通过此类来进行

方法:

	static Group init ( int group_id )

	手动构造一个Group类的实例，用于主动进行与群组的交互时使用 
	
	需要传入群聊的ID(群号)作为参数，以便进行各类操作


	static Group init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个Group类的实例，仅当你知道自己在做什么时才使用


	Dictionary get_metadata ( )

	获取实例中的元数据字典，仅当你知道自己在做什么时才使用


	void set_metadata ( Dictionary dic )

	使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用


	String get_name ( )

	获取群聊实例的名称(群名称)，若为手动构造的实例，将始终返回空字符串


	int get_id ( )

	获取群聊实例的ID(群号)


	int get_bot_permission ( )

	获取机器人在群聊实例中的权限，若为手动构造的实例，将始终返回0 
	
	权限列表请参见GroupMember类中的Permission枚举


	String get_avatar_url ( )

	获取群聊实例对应的群头像的图像链接，通常为jpg格式


	GroupMember get_member ( int member_id, float timeout=-INF )

	获取群聊实例中指定成员ID的GroupMember实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	GroupMemberList get_member_list ( float timeout=-INF )

	获取群聊实例中所有成员列表的GroupMemberList实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	MemberProfile get_member_profile ( int member_id, float timeout=-INF )

	获取群聊实例中指定成员ID相关资料的MemberProfile实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult toggle_mute_all ( bool enabled, float timeout=-INF )

	用于切换群聊实例的全员禁言状态，所需的参数为是否启用全员禁言 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	GroupConfig get_group_config ( float timeout=-INF )

	用于获取与群聊实例的各类配置相关的GroupConfig实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult set_group_config ( GroupConfig config, float timeout=-INF )

	用于将群聊实例的各类配置替换为指定的GroupConfig实例中的配置 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult send_message ( Variant msg, int quote_msgid=-1, float timeout=-INF )

	用于向群聊实例发送消息，同时可指定一个需要引用回复的消息ID 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	传入的第一个参数可以是以下类型: 
	- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送) 
	- 单个消息实例(将其作为消息链中的唯一消息实例发送) 
	- 消息链实例(将其内容复制并发送) 
	- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送) 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult send_nudge ( int member_id, float timeout=-INF )

	用于在群聊实例中向指定的成员ID发送一个戳一戳消息 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	GroupAnnounceInfoList publish_announce ( GroupAnnounce announce, float timeout=-INF )

	用于在群聊实例中发布一个指定的群公告实例，群公告实例的相关用法请参见[GroupAnnounce]类文档 
	
	配合await关键字可返回一个包含了已发布的群公告的[GroupAnnounceInfoList]类实例，以便于进行后续操作 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult delete_announce ( int announce_id, float timeout=-INF )

	用于在群聊实例中删除一个指定ID的群公告 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	GroupAnnounceInfoList get_announce_list ( int page_num=0, int per_page_size=10, float timeout=-INF )

	用于获取在群聊实例中的群公告的列表，可指定页码，以及每页将包含的群公告的数量，将返回一个[GroupAnnounceInfoList]类的实例 
	
	此函数必须配合await关键字进行使用，否则将会发生错误，且无法获取相关的信息 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult quit ( float timeout=-INF )

	用于让机器人主动退出群聊实例所对应的群聊 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult set_essence_message ( int msg_id, float timeout=-INF )

	用于在群聊实例中将指定ID的消息设置为精华消息 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	BotRequestResult recall_message ( int msg_id, float timeout=-INF )

	用于在群聊实例中将指定ID的消息撤回，机器人需要为管理员或群主才可撤回他人消息 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	CacheMessage get_cache_message ( int msg_id, float timeout=-INF )

	用于在群聊实例中获取指定ID的本地缓存消息，将返回一个[CacheMessage]类的实例 
	
	此函数必须配合await关键字进行使用，否则将会发生错误，且无法获取相关的信息 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间



