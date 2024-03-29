[font_size=25][b][color=#70bafa]类:[/color] QuoteMessage[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:Message]Message[/url]


[b]RainyBot的引用回复消息类，其实例记录了与一个引用回复消息相关的各类数据[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:QuoteMessage]QuoteMessage[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_message_id￿ [color=gray]([/color] [color=gray])[/color]

	获取被引用回复的原消息ID


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_group_id￿ [color=gray]([/color] [color=gray])[/color]

	获取被引用回复的原消息所在的群组的ID(若不位于群组中则返回0)


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_sender_id￿ [color=gray]([/color] [color=gray])[/color]

	获取被引用回复的原消息的发送者的ID


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_target_id￿ [color=gray]([/color] [color=gray])[/color]

	获取被引用回复的原消息的接收者(或接收群组)的ID


	● [color=#70bafa][url=api:MessageChain]MessageChain[/url][/color] ￿get_message_chain￿ [color=gray]([/color] [color=gray])[/color]

	获取被引用回复的原消息的消息链实例


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_as_text￿ [color=gray]([/color] [color=gray])[/color]

	将此实例获取为字符串的形式


