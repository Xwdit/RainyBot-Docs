类: Console

继承自: CoreAPI
 
RainyBot控制台类，包含了各类与控制台输出直接相关的功能

方法:

	static void print_text ( Variant text )

	在控制台中打印一个普通文本，可以传入任意类型值，将自动尝试转换为字符串


	static void print_error ( Variant text )

	在控制台中打印一个错误文本，可以传入任意类型值，将自动尝试转换为字符串


	static void print_warning ( Variant text )

	在控制台中打印一个警告文本，可以传入任意类型值，将自动尝试转换为字符串


	static void print_success ( Variant text )

	在控制台中打印一个成功文本，可以传入任意类型值，将自动尝试转换为字符串


	static void save_log ( )

	将控制台的内容立刻保存为以当前日期与时间命名的日志文件


	static bool popup_notification ( String text, String title="提示" )

	在控制台弹出一个具有指定文本的提示框，并且可以指定一个可选的自定义窗口标题 
	
	配合await关键词使用可以在提示框的确认按钮被点击时返回true，直接关闭时返回false


	static bool popup_confirm ( String text, String title="请确认" )

	在控制台弹出一个具有指定文本的确认框，并且可以指定一个可选的自定义窗口标题 
	
	配合await关键词使用可以在确认框的确认按钮被点击时返回true，点击取消或直接关闭时返回false


	static void disable_sysout ( bool disabled )

	临时禁用控制台中的系统消息输出，不影响插件通过[code]Console.print_[/code]系列函数进行的输出



