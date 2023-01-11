[font_size=25][b][color=#70bafa]类:[/color] GroupList[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:GroupAPI]GroupAPI[/url]


[b]RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表[/b]


[font_size=25][color=#70bafa][b]描述[/b][/color][/font_size]

这是RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表 
你可以像数组/字典一样直接使用for x in x的语法来循环列表中的所有群组(将返回Group类实例)


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray]static[/color] [color=#70bafa][url=api:GroupList]GroupList[/url][/color] ￿init_meta￿ [color=gray]([/color] [color=#70bafa][url=godot:Array]Array[/url][/color] arr [color=gray])[/color]

	通过机器人协议后端的元数据数组构造一个GroupList类的实例，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=godot:Array]Array[/url][/color] ￿get_metadata￿ [color=gray]([/color] [color=gray])[/color]

	获取实例中的元数据数组，仅当你知道自己在做什么时才使用


	● [color=gray][hint=此函数无返回值]void[/hint][/color] ￿set_metadata￿ [color=gray]([/color] [color=#70bafa][url=godot:Array]Array[/url][/color] arr [color=gray])[/color]

	使用指定数组覆盖实例中的元数据数组，仅当你知道自己在做什么时才使用


	● [color=#70bafa][url=api:Group]Group[/url][/color] ￿get_from_index￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] index [color=gray])[/color]

	根据指定的序号来从群列表实例中获取对应的Group实例 
	
	若序号不存在则返回null


	● [color=#70bafa][url=api:Group]Group[/url][/color] ￿get_from_id￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] group_id [color=gray])[/color]

	根据指定的群ID(群号)来从群列表实例中获取对应的Group实例 
	
	若群ID不存在则返回null


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_size￿ [color=gray]([/color] [color=gray])[/color]

	获取群列表实例中的群实例的总数


	● [color=#70bafa][url=godot:bool]bool[/url][/color] ￿has_group￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] group_id [color=gray])[/color]

	判断群列表实例中是否存在指定群ID(群号)的群组实例


