[font_size=30][color=#70bafa]类:[/color] FriendInputStatusChangeEvent[/font_size]

[color=#70bafa]继承自:[/color] FriendEvent
 
[b]RainyBot的好友输入状态变更事件类，记录了某次好友输入状态变更事件的相关数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]FriendInputStatusChangeEvent[/color] ￿init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]bool[/color] ￿get_input_state [color=gray]([/color]  [color=gray])[/color]

	用于判断此事件对应的输入状态是开始输入还是停止输入


	● [color=#70bafa]Member[/color] ￿get_member [color=gray]([/color]  [color=gray])[/color]

	获取此事件对应的好友成员实例



