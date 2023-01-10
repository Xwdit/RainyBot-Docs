[font_size=30][color=#70bafa]类:[/color] ForwardMessage[/font_size]

[color=#70bafa]继承自:[/color] Message
 
[b]RainyBot的转发消息类，其实例记录了与一个转发消息相关的各类数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]ForwardMessage[/color] ￿init [color=gray]([/color] [color=#70bafa]ForwardMessageNodeList[/color] node_list [color=gray])[/color]

	基于指定的转发消息列表实例来手动构造一个ForwardMessage实例


	● [color=gray]static[/color] [color=#70bafa]ForwardMessage[/color] ￿init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]ForwardMessageNodeList[/color] ￿get_node_list [color=gray]([/color]  [color=gray])[/color]

	获取此实例对应的转发消息列表实例


	● [color=gray]void[/color] ￿set_node_list [color=gray]([/color] [color=#70bafa]ForwardMessageNodeList[/color] node_list [color=gray])[/color]

	设置此实例对应的转发消息列表实例



