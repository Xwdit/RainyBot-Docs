#RainyBot场景加载/图像生成示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅
extends Plugin #默认继承插件类，请勿随意改动


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("scene_example","场景加载/图像生成示例","Xwdit","1.0","场景加载与图像生成示例插件")
	

#将在此插件被完全加载后执行的操作
#可以在此处进行各类事件/关键词/命令的注册，以及配置/数据文件的初始化等
func _on_load():
	#注册关键词 "生成图片"，绑定到"_generate"函数
	register_keyword("生成图片","_generate")
	
	#注册关键词 "生成动图"，绑定到"_generate_anim"函数
	register_keyword("生成动图","_generate_anim")
	
	#注册群消息事件与好友消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event([GroupMessageEvent,FriendMessageEvent],"trigger_keyword")


#关键词 "生成图片" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _generate(keyword,parsed,arg,event):
	#不建议在与关键词/事件/命令直接绑定的函数中包含await关键字，否则会提示运行时错误(但不影响运行)，因此调用另一个函数进行处理
	gen_img(arg,event)


#关键词 "生成动图" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _generate_anim(keyword,parsed,arg,event):
	#不建议在与关键词/事件/命令直接绑定的函数中包含await关键字，否则会提示运行时错误(但不影响运行)，因此调用另一个函数进行处理
	gen_anim_img(arg,event)


#用于生成图片并发送到触发关键词的事件
func gen_img(arg,event):
	#加载所需的场景文件，并将其配置为准备用于图像捕捉(通过将第二个参数设置为true)，否则后续将无法获取其内容的图像
	#需要保证场景文件与根目录的相对路径和原项目中的相同，否则可能会无法加载或出现异常
	#此处在等待场景加载完成后，将其储存在scene变量中以便后续使用
	var scene = await load_scene(get_plugin_path()+"scene_example/example_scene.tscn",true)
	
	scene.set_text(arg) #调用场景脚本中预先定义的函数，将加载的场景中的文本设置为接收的参数文本
	
	#将场景中的当前内容获取为Image图像实例，获取的图像的原始大小设置为512x512，等待其获取完成并储存至img变量
	var img:Image = await get_scene_image(scene,Vector2i(512,512))
	
	scene.queue_free() #已从场景中获取了所需的图像，因此将场景释放以节省资源
	
	#将获取的图像构造为ImageMessage图片消息实例，储存在img_msg变量中
	var img_msg:ImageMessage = ImageMessage.init(img)
	
	event.reply(img_msg) #将图片消息发送回触发此关键词的位置


#用于生成动图并发送到触发关键词的事件
func gen_anim_img(arg:String,event:MessageEvent):
	#加载所需的场景文件，并将其配置为准备用于图像捕捉(通过将第二个参数设置为true)，否则后续将无法获取其内容的图像
	#需要保证场景文件与根目录的相对路径和原项目中的相同，否则可能会无法加载或出现异常
	#此处在等待场景加载完成后，将其储存在scene变量中以便后续使用
	var scene:Node = await load_scene(get_plugin_path()+"scene_example/example_scene.tscn",true)
	
	# 构造一个GifImage类动态图像实例，并将其图像大小设置为128x128
	# 动态图像的大小越大，生成所需的时间越长，因此请注意控制大小
	var anim_img = GifImage.init(Vector2(128,128))

	scene.set_text(arg) #将加载的场景中的文本设置为接收的参数
	
	for i in range(20): #循环20次，以便往动态图实例中添加20帧
		scene.rotate_text(360.0/20.0) #每次循环将文字顺时针旋转18度，循环20次后文字应正好旋转一圈(360度)
		
		#将当前状态的场景内容获取为Image图像实例，获取的图像的原始大小设置为512x512，获取后的图像的缩放大小设置为128x128，等待其获取完成并储存至img变量
		var img:Image = await get_scene_image(scene,Vector2i(512,512),Vector2i(128,128))
		
		#将获取的场景图像添加为新的Gif图像帧，并将这一帧的持续时间设置为0.05秒，播放20帧应正好需要1秒 (即20fps)
		anim_img.add_frame(img,0.05)
		
	scene.queue_free() #已从场景中获取了所需的所有图像，因此将场景释放以节省资源
	
	#计算并获取将当前动态图像实例生成为Gif文件的预计所需时长，等待其计算完毕并储存至gen_time变量
	var gen_time:float = await anim_img.get_generate_time()
	
	#将提示消息发送回触发此关键词的位置
	event.reply("正在生成动态图片，请稍候...(预计时间: %s秒)"% gen_time)
	
	#开始将Gif图像实例生成为Gif图像文件，等待其生成完毕并构造为ImageMessage图片消息实例，储存在img_msg变量中
	var img_msg:ImageMessage = await ImageMessage.init_gif(anim_img)
	
	event.reply(img_msg) #将包含了动态图片的图片消息发送回触发此关键词的位置
