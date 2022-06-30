extends Control


# 提供给插件用于修改场景显示的文本内容
func set_text(text:String):
	$Label.text = text


# 提供给插件用于增加场景显示的文本的旋转角度
func rotate_text(degree:float):
	$Label.rotation += deg2rad(degree)
