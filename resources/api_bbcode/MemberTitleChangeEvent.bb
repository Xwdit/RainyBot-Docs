[font_size=25][b][color=#70bafa]类:[/color] MemberTitleChangeEvent[/b][/font_size]
[color=#70bafa]继承:[/color] GroupMemberEvent


[b]RainyBot的群成员头衔变更类，其实例记录了与一次群成员头衔变更事件相关的数据[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]MemberTitleChangeEvent[/color] ￿init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]GroupMember[/color] ￿get_member [color=gray]([/color] [color=gray])[/color]

	获取此事件对应的群成员实例


	● [color=#70bafa]Group[/color] ￿get_group [color=gray]([/color] [color=gray])[/color]

	获取此事件所发生的群组实例


	● [color=#70bafa]String[/color] ￿get_origin_title [color=gray]([/color] [color=gray])[/color]

	获取变更前的群头衔


	● [color=#70bafa]String[/color] ￿get_current_title [color=gray]([/color] [color=gray])[/color]

	获取变更后的当前群头衔



