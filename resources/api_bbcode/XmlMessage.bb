[font_size=30][color=#70bafa]类:[/color] XmlMessage[/font_size]

[color=#70bafa]继承自:[/color] Message
 
[b]RainyBot的Xml消息类，其实例记录了与一个Xml消息相关的各类数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]XmlMessage[/color] init [color=gray]([/color] [color=#70bafa]String[/color] text [color=gray])[/color]

	基于指定的文本来手动构造一个XmlMessage类的实例


	● [color=gray]static[/color] [color=#70bafa]XmlMessage[/color] init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]String[/color] get_xml_text [color=gray]([/color]  [color=gray])[/color]

	获取此实例中对应的Xml文本


	● [color=gray]void[/color] set_xml_text [color=gray]([/color] [color=#70bafa]String[/color] text [color=gray])[/color]

	设置此实例中对应的Xml文本


	● [color=#70bafa]String[/color] get_as_text [color=gray]([/color]  [color=gray])[/color]

	将此实例获取为字符串的形式



