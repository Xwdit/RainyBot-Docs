extends Node #继承Node类，用于RainyBot内部处理与加载，请勿进行改动

##
## RainyBot的插件类，代表一个实例，用于在插件中实现各类相关功能
##
## @desc:
##     这是RainyBot的插件类，代表一个插件实例，用于在插件中实现各类相关功能。
##     所有插件应当继承此类，以便在RainyBot中正确加载与运行。
##


class_name Plugin #定义类名为Plugin，请勿进行改动


## 在插件中覆盖此虚函数，以便定义插件在即将被加载时执行的操作
## 所有插件在任何情况下都需要在其中执行set_plugin_info()函数来设定您的插件信息，
## 以便RainyBot能正确处理与加载您的插件 (参见插件模板或示例插件)
func _on_init():
	pass


## 在插件中覆盖此虚函数，以便定义插件在被加载完毕后执行的操作
## 通常情况下，各类事件的注册与函数绑定都可以在这里进行
func _on_load():
	pass


func _on_ready():
	pass


## 在插件中覆盖此虚函数，以便定义插件运行中的每一秒将执行的操作
## 通常情况下，各类与计时相关的操作都可以在这里进行
func _on_process():
	pass


## 在插件中覆盖此虚函数，以便定义插件在即将被卸载时执行的操作
## 通常情况下，命令的取消注册，插件的数据保存等操作都可以在这里进行
func _on_unload():
	pass


## 用于设定插件的相关信息，需要在_on_init()虚函数中执行以便RainyBot正确加载您的插件
## 需要的参数从左到右分别为插件ID(不可与其它已加载插件重复),插件名,插件作者,插件版本,插件描述
## 最后一项可选参数为此插件的依赖插件列表(数组)，需要以所依赖的插件的ID作为列表中的元素，如:["example","example_1"]
func set_plugin_info(p_id:String,p_name:String,p_author:String,p_version:String,p_description:String,p_dependency:Array=[]):
	return


## 用于获取插件的相关信息，将返回一个包含插件信息的字典
## 使用id,name,author,version,description作为key即可从字典中获取对应信息
func get_plugin_info()->Dictionary:
	return {}


## 用于获取插件对应的文件名，将返回插件文件的名称 (如ChatBot.gd)
func get_plugin_filename()->String:
	return ""


## 用于获取插件对应的文件路径，将返回插件文件的绝对路径 (如D://RainyBot/plugins/ChatBot.gd)
func get_plugin_path()->String:
	return ""


## 用于手动设定插件的已运行时间，可用于与计时相关的功能进行交互
func set_plugin_runtime(time_sec:int):
	return
	

## 用于获取插件的已运行时间，默认情况下为插件成功加载以来经过的秒数
func get_plugin_runtime()->int:
	return 0


## 用于获取其他插件的实例，可用于插件之间的联动与数据互通等
## 需要传入其他插件的ID作为参数来获取其实例
func get_other_plugin_instance(plugin_id:String)->Plugin:
	return null


## 用于注册一个事件并将其绑定到指定函数，事件发生时将触发此函数并传入事件实例
## 需要的参数从左到右分别为:
## 事件的类型 (需要直接或间接继承Event类，如GroupMessageEvent群消息事件)
## 事件触发的函数名(当对应事件发生时将触发的函数名称，此函数需要定义一个参数用于接收事件实例)
## [可选,默认为false]事件是否注册为优先事件(注册为优先的事件触发顺序将较为靠前)
## Tips:若以false作为被事件触发的函数的返回值，可阻止事件被传播到较低优先级的插件中(异步函数无效)
func register_event(event:GDScript,function,priority:int=0):
	return


## 用于取消注册一个事件，取消注册后插件将不再对此事件做出响应
## 只需传入事件的类型作为参数即可
func unregister_event(event:GDScript):
	return


## 用于注册一个控制台命令并将其绑定到指定函数，命令被执行时将触发此函数，并传入对应的命令名与参数数组
## 命令被注册后将会在帮助菜单中自动显示，无法注册已经存在的命令
## 参数数组中包含了以空格分隔的命令参数的列表，如命令 plugins load xxx.gd ，传入的数组中将包含["load","xxx.gd"]
## 需要的参数从左到右分别为:
## 命令的名称(即为在控制台触发此命令需要输入的内容，请勿包含空格，不可与已存在的命令重复)
## 命令触发的函数名(当命令被执行时将触发的函数，此函数需要定义两个参数，分别用于接收命令名与传入的参数数组)
## [可选,默认为false]命令是否要求传入参数(若为true则在执行命令时必须传入参数，否则判定为用法错误)
## [可选,默认为空数组]命令的用法介绍(将在使用help指令或命令用法错误时显示。数组中的每项需为字符串，代表着一个子命令的用法)
func register_console_command(command:String,function,need_arguments:bool=false,usages:Array=[]):
	return


## 用于取消注册一个控制台命令，命令被取消注册后将无法在控制台被执行，且不会在帮助菜单中显示
## 需要传入对应的命令名来将其取消注册，无法取消注册不属于此插件的命令
func unregister_console_command(command:String):
	return


func register_keyword(keyword:String,function,perm_filter="",no_perm_reply:String=""):
	return
	
	
func unregister_keyword(keyword:String):
	return


func trigger_keyword(event:MessageEvent)->bool:
	return false
	

## 用于初始化插件的配置文件，并将其加载到内存中，以便在后续对其内容进行操作
## 对于数据的储存，建议使用插件数据库功能，可以提供更快的读写速度及更好的类型安全性，且可储存几乎任何类型的数据
## 执行此函数时，将会检测是否已存在此插件对应的配置文件，否则将会基于给定的默认配置字典来新建一个配置文件
## 需要的参数从左到右分别为:
## 默认配置的字典(即为新建配置文件时其中将包含的内容，RainyBot将以Json格式将其保存为配置文件)
## [可选,默认为空字典]每个配置项的介绍(字典的key为配置项的名称,对应的值为此配置项的相关介绍,两者均为字符串)
func init_plugin_config(default_config:Dictionary,config_description:Dictionary={}):
	return


## 用于将内存中的配置保存到配置文件中，需要先初始化配置文件才能使用此函数
func save_plugin_config():
	return


## 用于从已加载的配置中获取指定key对应的内容，需要先初始化配置文件才能使用此函数
func get_plugin_config(key):
	return
		

## 用于在已加载的配置中设定指定key的对应内容，需要先初始化配置文件才能使用此函数
## 最后一项参数用于指定是否在设定的同时将更改保存到配置文件中
func set_plugin_config(key,value,save_file:bool=true):
	return


## 用于直接获取已加载的配置的字典，便于以字典的形式对其进行操作，需要先初始化配置文件才能使用此函数
func get_plugin_config_metadata()->Dictionary:
	return {}


## 用于直接替换已加载的配置的字典为指定的字典，便于以字典的形式对其进行操作，需要先初始化配置文件才能使用此函数
## 最后一项参数用于指定是否在设定的同时将更改保存到配置文件中	
func set_plugin_config_metadata(dic:Dictionary,save_file:bool=true):
	return
	

## 用于初始化插件的数据库文件，并将其加载到内存中，以便在后续对其内容进行操作
## 对于配置的储存，建议使用插件配置功能，以便指定默认配置与配置说明，且能使用常规编辑器对其进行编辑与更改
## 执行此函数时，将会检测是否已存在此插件对应的数据库文件，否则将会新建一个空白的数据库文件(.rdb格式)
func init_plugin_data():
	return
			

## 用于将内存中的数据保存到数据库文件中，需要先初始化数据库文件才能使用此函数		
func save_plugin_data():
	return
		

## 用于从已加载的数据库中获取指定key对应的内容，需要先初始化数据库文件才能使用此函数		
func get_plugin_data(key):
	return


## 用于在已加载的数据库中设定指定key的对应内容，需要先初始化数据库文件才能使用此函数
## 最后一项参数用于指定是否在设定的同时将更改保存到数据库文件中
func set_plugin_data(key,value,save_file:bool=true):
	return


## 用于直接获取已加载的数据库的字典，便于以字典的形式对其进行操作，需要先初始化数据库文件才能使用此函数
func get_plugin_data_metadata()->Dictionary:
	return {}


## 用于直接替换已加载的数据库的字典为指定的字典，便于以字典的形式对其进行操作，需要先初始化数据库文件才能使用此函数
## 最后一项参数用于指定是否在设定的同时将更改保存到数据库文件中
func set_plugin_data_metadata(dic:Dictionary,save_file:bool=true):
	return


## 用于令插件卸载自身，可用于需要中止运行的场景，如当某些条件验证不通过时可使用此函数来避免出现问题
func unload_plugin():
	return


## 用于等待一个指定ID的上下文，并在收到响应后返回相应的内容，需要配合await关键字使用
## 需要的参数从左到右分别为:
## 上下文的ID(任意字符串即可，若已存在对应ID的上下文则将等待此上下文的响应)
## [可选,默认为20秒]等待的超时时间(若数值小于等于0, 或上下文已存在, 则不启用超时)
## 注意:超时后函数将返回null，请不要忘记在使用时进行判断
func wait_context(context_id:String,timeout:float=20.0):
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


## 用于响应一个指定ID的上下文，并自定义响应的内容
## 需要的参数从左到右分别为:
## 上下文的ID(需要为已存在的，等待响应中的上下文)
## 响应的内容(可以是任意类型，将由等待中的上下文的函数返回)
func respond_context(context_id:String,response):
	return