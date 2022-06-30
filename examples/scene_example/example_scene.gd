extends Label


# 提供给插件用于修改场景显示的文本内容
func set_text(new_text:String):
	text = new_text


# 提供给插件用于增加场景显示的文本的旋转角度
func rotate_text(degree:float):
	rotation += deg2rad(degree)
