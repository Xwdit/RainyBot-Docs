[font_size=30][color=#70bafa]类:[/color] OtherClientOnlineEvent[/font_size]

[color=#70bafa]继承自:[/color] OtherClientEvent
 
[b]RainyBot的其它客户端上线事件类，其实例记录了与一次其它客户端上线事件相关的数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]OtherClientOnlineEvent[/color] ￿init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]int[/color] ￿get_kind_id [color=gray]([/color]  [color=gray])[/color]

	获取事件对应的其它客户端的详细设备类型ID



