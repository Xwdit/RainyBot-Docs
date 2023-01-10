[font_size=30][color=#70bafa]类:[/color] FileMessage[/font_size]

[color=#70bafa]继承自:[/color] Message
 
[b]RainyBot的文件消息类，其实例记录了与一个文件消息相关的各类数据[/b]

[font_size=30][color=#70bafa]方法:[/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa]FileMessage[/color] init_meta [color=gray]([/color] [color=#70bafa]Dictionary[/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa]String[/color] get_file_id [color=gray]([/color]  [color=gray])[/color]

	获取此消息实例对应的文件的ID


	● [color=#70bafa]String[/color] get_file_name [color=gray]([/color]  [color=gray])[/color]

	获取此消息实例对应的文件的名称


	● [color=#70bafa]int[/color] get_file_size [color=gray]([/color]  [color=gray])[/color]

	获取此消息实例对应的文件的大小


	● [color=#70bafa]String[/color] get_as_text [color=gray]([/color]  [color=gray])[/color]

	将此实例获取为字符串的形式



