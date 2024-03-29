[font_size=25][b][color=#70bafa]类:[/color] DiceMessage[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:Message]Message[/url]


[b]RainyBot的骰子消息类，其实例记录了与一个骰子消息相关的各类数据[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:DiceMessage]DiceMessage[/url][/color] ￿init￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] value [color=gray])[/color]

	通过指定一个骰子点数来手动构造一个骰子消息类实例


	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:DiceMessage]DiceMessage[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_dice_value￿ [color=gray]([/color] [color=gray])[/color]

	获取此消息实例对应的骰子的点数


	● [color=gray][hint=此方法无返回值]void[/hint][/color] ￿set_dice_value￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] value [color=gray])[/color]

	设置此消息实例对应的骰子的点数


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_as_text￿ [color=gray]([/color] [color=gray])[/color]

	将此实例获取为字符串的形式


