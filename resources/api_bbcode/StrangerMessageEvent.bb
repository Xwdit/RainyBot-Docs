[font_size=25][b][color=#70bafa]类:[/color] StrangerMessageEvent[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:MessageEvent]MessageEvent[/url]


[b]RainyBot的单向好友消息事件类，其实例记录了与一次单向好友消息事件相关的数据[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa][url=api:StrangerMessageEvent]StrangerMessageEvent[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=api:Member]Member[/url][/color] ￿get_sender￿ [color=gray]([/color] [color=gray])[/color]

	获取消息事件对应的发送者的单向好友成员实例


