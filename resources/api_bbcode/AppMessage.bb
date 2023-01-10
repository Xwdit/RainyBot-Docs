[font_size=30][color=#70bafa]类:[/color] AppMessage[/font_size]

[color=#70bafa]继承自:[/color] Message
 
[b]RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景[/b]

[font_size=30][color=#70bafa]描述:[/color][/font_size]

这是RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景 [br]此类实例中储存了App消息的代码原文本，你也可以基于指定APP消息代码文本来构建一个此类实例

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]AppMessage[/color] init [color=gray]([/color] [color=#70bafa]String[/color] text [color=gray])[/color]

	基于指定的App消息代码文本来手动构造一个AppMessage类的实例


	● [color=gray]static[/color] [color=#70bafa]AppMessage[/color] init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个AppMessage类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]String[/color] get_app_text [color=gray]([/color]  [color=gray])[/color]

	获取实例中储存的App消息代码文本


	● [color=gray]void[/color] set_app_text [color=gray]([/color] [color=#70bafa]String[/color] text [color=gray])[/color]

	更改实例中储存的App消息代码文本


	● [color=#70bafa]String[/color] get_as_text [color=gray]([/color]  [color=gray])[/color]

	将此实例获取为字符串的形式



