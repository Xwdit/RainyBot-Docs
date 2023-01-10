[font_size=30][color=#70bafa]类:[/color] GroupRecallEvent[/font_size]

[color=#70bafa]继承自:[/color] GroupEvent
 
[b]RainyBot的群组消息撤回类，其实例记录了与一次群组消息撤回事件相关的数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]GroupRecallEvent[/color] init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]int[/color] get_sender_id [color=gray]([/color]  [color=gray])[/color]

	获取被撤回的消息的发送者ID


	● [color=#70bafa]int[/color] get_message_id [color=gray]([/color]  [color=gray])[/color]

	获取被撤回的消息的ID


	● [color=#70bafa]int[/color] get_message_timestamp [color=gray]([/color]  [color=gray])[/color]

	获取被撤回的消息的发送时间戳


	● [color=#70bafa]GroupMember[/color] get_operator [color=gray]([/color]  [color=gray])[/color]

	获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是发送者自己


	● [color=#70bafa]Group[/color] get_group [color=gray]([/color]  [color=gray])[/color]

	获取此事件实例所对应的群组实例



