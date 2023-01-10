[font_size=30][color=#70bafa]类:[/color] MemberJoinRequestEvent[/font_size]

[color=#70bafa]继承自:[/color] RequestEvent
 
[b]RainyBot的新成员入群请求事件类，其实例记录了与一次新成员入群请求事件相关的数据[/b]

[font_size=30][color=#70bafa]枚举:[/color][/font_size]

	[color=#70bafa]enum[/color] ￿RespondType

	可用于回应请求的回应类型

		● ACCEPT [color=gray]= 0[/color]
		[color=gray]允许新成员入群[/color]

		● REFUSE [color=gray]= 1[/color]
		[color=gray]拒绝新成员入群[/color]

		● IGNORE [color=gray]= 2[/color]
		[color=gray]忽略新成员的入群请求[/color]

		● REFUSE_BLACKLIST [color=gray]= 3[/color]
		[color=gray]拒绝新成员入群并加入黑名单[/color]

		● IGNORE_BLACKLIST [color=gray]= 4[/color]
		[color=gray]忽略新成员的入群请求并加入黑名单[/color]


[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]MemberJoinRequestEvent[/color] ￿init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]String[/color] ￿get_group_name [color=gray]([/color]  [color=gray])[/color]

	获取事件对应的新成员希望加入的群的名称



