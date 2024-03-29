[font_size=25][b][color=#70bafa]类:[/color] FriendNickChangeEvent[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:FriendEvent]FriendEvent[/url]


[b]RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据[/b]


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:FriendNickChangeEvent]FriendNickChangeEvent[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Dictionary]Dictionary[/url][/color] dic [color=gray])[/color]

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_origin_nickname￿ [color=gray]([/color] [color=gray])[/color]

	获取此事件对应的好友的原昵称


	● [color=#70bafa][url=godot:String]String[/url][/color] ￿get_current_nickname￿ [color=gray]([/color] [color=gray])[/color]

	获取此事件对应的好友更改后的昵称


	● [color=#70bafa][url=api:Member]Member[/url][/color] ￿get_member￿ [color=gray]([/color] [color=gray])[/color]

	获取此事件对应的好友的成员实例


