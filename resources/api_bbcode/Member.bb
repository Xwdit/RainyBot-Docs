[font_size=25][b][color=#70bafa]类:[/color] Member[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:MemberAPI]MemberAPI[/url]


[b]RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能[/b]


[font_size=25][color=#70bafa][b]描述[/b][/color][/font_size]

这是RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能 
绝大部分与好友/单向好友(陌生人)直接相关的操作都可以通过此类来进行


[font_size=25][color=#70bafa][b]枚举[/b][/color][/font_size]

	[color=#70bafa]enum[/color] ￿Role￿

	这是代表了个体成员类型的枚举，在进行类型判断相关操作时可在转为整数后用于对比 
	
	如"get_role() == Member.Role.FRIEND"可判断个体成员是否为好友

		● FRIEND [color=gray]= 0[/color]
		[color=gray]代表个体成员的类型为好友[/color]

		● STRANGER [color=gray]= 1[/color]
		[color=gray]代表个体成员的类型为单向好友(陌生人)[/color]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:Member]Member[/url][/color] ￿init￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] member_id, [color=#70bafa][url=godot:int]int[/url][/color] role[color=gray] = 0[/color] [color=gray])[/color]

	手动构造一个Member类的实例，用于主动进行与个体成员的交互时使用 
	
	需要传入的参数分别为个体成员的ID，个体成员的类型(可选，默认为Member.Role.FRIEND)


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:Member]Member[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic, [color=#70bafa][url=godot:int]int[/url][/color] role[color=gray] = 0[/color] [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个Member类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] ￿get_metadata￿ [color=gray]([/color] [color=gray])[/color]

	获取实例中的元数据字典，仅当你知道自己在做什么时才使用


	● [color=gray][hint=此方法无返回值]void[/hint][/color] ￿set_metadata￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic [color=gray])[/color]

	使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_role￿ [color=gray]([/color] [color=gray])[/color]

	获取个体成员实例的类型，将返回一个对应Role枚举的整数值 
	
	若为手动构造的实例，将始终返回0


	● [color=gray][hint=此方法无返回值]void[/hint][/color] ￿set_role￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] role [color=gray])[/color]

	设置个体成员实例的类型


	● [color=#70bafa][url=godot:bool]bool[/url][/color] ￿is_role￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] role [color=gray])[/color]

	判断个体成员实例是否为某类型


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_id￿ [color=gray]([/color] [color=gray])[/color]

	获取个体成员实例的ID


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_name￿ [color=gray]([/color] [color=gray])[/color]

	获取个体成员实例的名称(昵称)，若为手动构造的实例，将始终返回空字符串


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_remark￿ [color=gray]([/color] [color=gray])[/color]

	获取Bot对个体成员实例的备注，若为手动构造的实例，将始终返回空字符串


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_avatar_url￿ [color=gray]([/color] [color=gray])[/color]

	获取个体成员实例对应账号的头像的图像链接，通常为jpg格式


	● [color=#70bafa][url=api:MemberProfile]MemberProfile[/url][/color] ￿get_profile￿ [color=gray]([/color] [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	获取个体成员实例相关资料的MemberProfile实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:BotRequestResult]BotRequestResult[/url][/color] ￿send_message￿ [color=gray]([/color] [color=#70bafa][url=godot:Variant]Variant[/url][/color] msg, [color=#70bafa][url=godot:int]int[/url][/color] quote_msgid[color=gray] = -1[/color], [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	向个体成员实例发送消息，同时可指定一个需要引用回复的消息ID 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	传入的第一个参数可以是以下类型: 
	- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送) 
	- 单个消息实例(将其作为消息链中的唯一消息实例发送) 
	- 消息链实例(将其内容复制并发送) 
	- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送) 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:BotRequestResult]BotRequestResult[/url][/color] ￿send_nudge￿ [color=gray]([/color] [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	向个体成员实例发送一个戳一戳消息 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:BotRequestResult]BotRequestResult[/url][/color] ￿delete_friend￿ [color=gray]([/color] [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	解除与个体成员实例的好友/单向好友关系 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:MessageChain]MessageChain[/url][/color] ￿get_roaming_messages￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] start_time[color=gray] = 0[/color], [color=#70bafa][url=godot:int]int[/url][/color] end_time[color=gray] = 9223372036854775807[/color], [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	用于在个体成员实例中获取指定时间段的漫游消息，将返回包含符合条件的漫游消息的[MessageChain]实例 
	
	所需的参数由上到下分别为: 
	- 漫游消息的开始时间戳(可选，若为默认值则将尝试获取自最早的漫游消息) 
	- 漫游消息的截止时间戳(可选，若为默认值则将尝试获取至最近的漫游消息) 
	
	此函数必须配合await关键字进行使用，否则将会发生错误，且无法获取相关的信息 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:BotRequestResult]BotRequestResult[/url][/color] ￿recall_message￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] msg_id, [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	用于在个体成员实例中将指定ID的消息撤回，仅可撤回机器人发送的消息 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	● [color=#70bafa][url=api:CacheMessage]CacheMessage[/url][/color] ￿get_cache_message￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] msg_id, [color=#70bafa][url=godot:float]float[/url][/color] timeout[color=gray] = inf_neg[/color] [color=gray])[/color]

	用于在个体成员实例中获取指定ID的本地缓存消息，将返回一个[CacheMessage]类的实例 
	
	此函数必须配合await关键字进行使用，否则将会发生错误，且无法获取相关的信息 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


