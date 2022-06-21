#RainyBot场景加载/图像生成示例插件
#更多帮助文档，示例插件及API请访问 https://github.com/Xwdit/RainyBot-API 进行查阅
extends Plugin #默认继承插件类，请勿随意改动


var scene:Node #定义一个变量，用于储存插件加载的，定义了要生成的图像布局的场景根节点
var viewport:SubViewport ##定义一个变量，储存将用于生成图像的SubViewport


#将在此插件的文件被读取时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	#从左到右分别为插件的ID，名称，作者，版本，描述
	set_plugin_info("scene_example","场景加载/图像生成示例","Xwdit","1.0","场景加载与图像生成示例插件")
	

#将在此插件被完全加载后执行的操作
#可以在此处进行各类事件/关键词/命令的注册，以及配置/数据文件的初始化等
func _on_load():
	#创建一个512x512大小的SubViewport并储存至viewport变量
	viewport = create_viewport(Vector2i(512,512))
	
	#加载所需的场景文件，附加至刚才创建的SubViewport以便截取图像，并储存至scene变量
	#需要保证场景文件与根目录的相对路径和原工程中的相同，否则可能会出现异常
	scene = await load_scene(get_plugin_path()+"scene_example/example_scene.tscn",viewport)
	
	#注册关键词 "生成图片"，绑定到"_generate"函数
	register_keyword("生成图片","_generate")
	
	#注册关键词 "更改大小"，绑定到"_size"函数
	register_keyword("更改大小","_size")
	
	#注册关键词 "切换透明"，绑定到"_trans"函数
	register_keyword("切换透明","_trans")
	
	
	#注册群消息事件与好友消息事件，绑定到内置的"trigger_keyword"函数用于触发关键词
	#注意：若要直接绑定到内置函数，则必须附带双引号；仅消息事件可用于触发关键词
	register_event([GroupMessageEvent,FriendMessageEvent],"trigger_keyword")


#关键词 "生成图片" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _generate(keyword,parsed,arg,event):
	#不建议在与关键词/事件/命令直接绑定的函数中包含await关键字，否则会提示运行时错误(但不影响运行)，因此调用另一个函数进行处理
	gen_img(arg,event)


#用于生成图片并发送到触发关键词的事件
func gen_img(arg,event):
	scene.set_text(arg) #将加载的场景中的文本设置为接收的参数
	
	#等待场景所在的SubViewport更新并截取其渲染的Image类图像，储存至img变量
	var img:Image = await get_viewport_image(viewport,true)
	
	#将获取的图像构造为ImageMessage实例
	var img_msg:ImageMessage = ImageMessage.init(img)
	
	event.reply(img_msg) #将图片消息发送回触发此关键词的位置


#关键词 "更改大小" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _size(keyword,parsed,arg,event):
	#期望接收的参数格式为"宽x高"，因此将字符串分割为数组用于后续处理
	var arr = arg.split("x")
	
	if arr.size() == 2: #判断字符串是否可以被分割为两个元素
		
		#将分割后的两个元素转为整数
		var x = arr[0].to_int() 
		var y = arr[1].to_int()
		
		if x <= 1920 and y<= 1080: #将大小限制为1920x1080
			#设置储存的SubViewport的渲染大小，第一个参数为SubViewport实例，第二个参数为要设置的大小 (需要为一个Vector2i)
			set_viewport_size(viewport,Vector2i(x,y))
		
			#将提示反馈消息发送回触发此关键词的位置
			event.reply("成功将生成的图像大小更改为: %s"% Vector2i(x,y))
		else:
			#将提示反馈消息发送回触发此关键词的位置
			event.reply("无法更改生成的图像大小，图像大小最大只能为1920x1080")
			
	else:
		event.reply("参数错误，格式需要为: 整数x整数") #将提示反馈消息发送回触发此关键词的位置


#关键词 "切换透明" 将触发此函数，关键词所绑定的函数需要接收的参数从左到右分别为：
#关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例
func _trans(keyword,parsed,arg,event):
	if viewport.transparent_bg: #判断储存的SubViewport是否已启用背景透明
		
		#禁用储存的SubViewport的背景透明
		set_viewport_transparent(viewport,false)
		
		#将提示反馈消息发送回触发此关键词的位置
		event.reply("已关闭背景透明") 
		
	else:
		#启用储存的SubViewport的背景透明
		set_viewport_transparent(viewport,true)
		
		#将提示反馈消息发送回触发此关键词的位置
		event.reply("已启用背景透明") 
