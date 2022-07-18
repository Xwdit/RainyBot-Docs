# 类: Console

[(返回目录)](./)

**继承自:** [CoreAPI](CoreAPI.md)

RainyBot控制台类，包含了各类与控制台输出直接相关的功能

## 方法

* static void **print\_text (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) text **)**

在控制台中打印一个普通文本，可以传入任意类型值，将自动尝试转换为字符串

***

* static void **print\_error (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) text **)**

在控制台中打印一个错误文本，可以传入任意类型值，将自动尝试转换为字符串

***

* static void **print\_warning (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) text **)**

在控制台中打印一个警告文本，可以传入任意类型值，将自动尝试转换为字符串

***

* static void **print\_success (** [Variant](https://docs.godotengine.org/en/latest/classes/class\_variant.html) text **)**

在控制台中打印一个成功文本，可以传入任意类型值，将自动尝试转换为字符串

***

* static void **save\_log ( )**

将控制台的内容立刻保存为以当前日期与时间命名的日志文件

***

* static [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **popup\_notification (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) title="提示" **)**

在控制台弹出一个具有指定文本的提示框，并且可以指定一个可选的自定义窗口标题

配合await关键词使用可以在提示框的确认按钮被点击时返回true，直接关闭时返回false

***

* static [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) **popup\_confirm (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) text, [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) title="请确认" **)**

在控制台弹出一个具有指定文本的确认框，并且可以指定一个可选的自定义窗口标题

配合await关键词使用可以在确认框的确认按钮被点击时返回true，点击取消或直接关闭时返回false

***

* static void **disable\_sysout (** [bool](https://docs.godotengine.org/en/latest/classes/class\_bool.html) disabled **)**

临时禁用控制台中的系统消息输出，不影响插件通过`Console.print_`系列函数进行的输出

***
