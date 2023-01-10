类: Bot

继承自: BotAPI
 
RainyBot的Bot类，负责处理与当前使用的机器人后端账号相关的各类功能

方法:

	static int get_id ( )

	获取当前正在使用的机器人后端账号


	static bool is_bot_connected ( )

	判断与机器人后端是否已建立连接


	static int get_sent_message_count ( )

	获取已通过机器人后端发送的消息的数量


	static int get_group_message_count ( )

	获取已通过机器人后端接收到的群聊消息的数量


	static int get_private_message_count ( )

	获取已通过机器人后端接收到的私聊消息的数量


	static String get_avatar_url ( )

	获取机器人后端账号的头像的图像链接，通常为jpg格式


	static MemberList get_friend_list ( float timeout=-INF )

	获取当前机器人账号的好友列表，需要与await关键词配合使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	static GroupList get_group_list ( float timeout=-INF )

	获取当前机器人账号的群组列表，需要与await关键词配合使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	static MemberProfile get_profile ( float timeout=-INF )

	获取当前机器人账号的资料卡，需要与await关键词配合使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间



