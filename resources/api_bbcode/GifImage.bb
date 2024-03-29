[font_size=25][b][color=#70bafa]类:[/color] GifImage[/b][/font_size]
[color=#70bafa]继承:[/color] [url=api:CoreAPI]CoreAPI[/url]


[b]RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送[/b]


[font_size=25][color=#70bafa][b]信号[/b][/color][/font_size]

	● ￿changed￿ ( )

	在此Gif图像类实例的属性或数据发生变更时，将会触发此信号


[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]

	● [color=gray][hint=此方法调用时无需构造实例，可通过类名直接调用]static[/hint][/color] [color=#70bafa][url=api:GifImage]GifImage[/url][/color] ￿init￿ [color=gray]([/color] [color=#70bafa][url=godot:Vector2]Vector2[/url][/color] img_size [color=gray])[/color]

	基于指定的图像大小来构造一个GifImage类图像的实例


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿add_frame￿ [color=gray]([/color] [color=#70bafa][url=godot:Image]Image[/url][/color] image, [color=#70bafa][url=godot:float]float[/url][/color] delay_time [color=gray])[/color]

	向此Gif图像实例中添加一个新的图像帧，并设定这一帧的延迟时间 (持续时间)


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿insert_frame￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx, [color=#70bafa][url=godot:Image]Image[/url][/color] image, [color=#70bafa][url=godot:float]float[/url][/color] delay_time [color=gray])[/color]

	在指定的位置向此Gif图像实例中插入一个新的图像帧，并设定这一帧的延迟时间 (持续时间)


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿remove_frame￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx [color=gray])[/color]

	删除此Gif图像实例中位于指定位置的某一帧


	● [color=#70bafa][url=godot:Image]Image[/url][/color] ￿get_frame_image￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx [color=gray])[/color]

	获取此Gif图像实例中位于指定位置的某一帧的图像


	● [color=#70bafa][url=godot:float]float[/url][/color] ￿get_frame_delay_time￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx [color=gray])[/color]

	获取此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿set_frame_image￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx, [color=#70bafa][url=godot:Image]Image[/url][/color] image [color=gray])[/color]

	设置此Gif图像实例中位于指定位置的某一帧的图像


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿set_frame_delay_time￿ [color=gray]([/color] [color=#70bafa][url=godot:int]int[/url][/color] idx, [color=#70bafa][url=godot:float]float[/url][/color] delay_time [color=gray])[/color]

	设置此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)


	● [color=gray][hint=此方法无返回值]void[/hint][/color] ￿clear_frames￿ [color=gray]([/color] [color=gray])[/color]

	清除此Gif图像实例中的所有帧


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿get_frames_count￿ [color=gray]([/color] [color=gray])[/color]

	获取此Gif图像实例中的所有帧的数量


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿set_size￿ [color=gray]([/color] [color=#70bafa][url=godot:Vector2]Vector2[/url][/color] new_size [color=gray])[/color]

	设置此Gif图像实例的图像大小


	● [color=#70bafa][url=godot:Vector2]Vector2[/url][/color] ￿get_size￿ [color=gray]([/color] [color=gray])[/color]

	获取此Gif图像实例的图像大小


	● [color=#70bafa][url=godot:float]float[/url][/color] ￿get_playback_time￿ [color=gray]([/color] [color=gray])[/color]

	获取此Gif图像实例中的所有帧的总播放时间


	● [color=#70bafa][url=godot:int]int[/url][/color] ￿save￿ [color=gray]([/color] [color=#70bafa][url=godot:String]String[/url][/color] path [color=gray])[/color]

	将此Gif图像实例生成图像数据并保存至指定的gif文件，需要配合await关键字使用


	● [color=#70bafa][url=godot:float]float[/url][/color] ￿get_generate_time￿ [color=gray]([/color] [color=gray])[/color]

	获取此Gif图像实例中的所有帧的预计生成时间，需要配合await关键字使用


