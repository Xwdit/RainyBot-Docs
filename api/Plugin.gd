extends Node #继承Node类，用于RainyBot内部处理与加载，请勿进行改动

##
## RainyBot的插件类，代表一个实例，用于在插件中实现各类相关功能
##
## 这是RainyBot的插件类，代表一个插件实例，用于在插件中实现各类相关功能。所有插件应当继承此类，以便在RainyBot中正确加载与运行。
## [br][br]您可以点击此链接来查看可供插件使用的所有API文档: [RainyBotAPI]
##

class_name Plugin #定义类名为Plugin，请勿进行改动


## 关键词的匹配模式枚举，决定了触发某关键词判定的条件
enum MatchMode{
	BEGIN, ## 仅当关键词位于消息开头时触发判定
	BETWEEN, ## 仅当关键词位于消息中间时触发判定
	END, ## 仅当关键词位于消息末尾时触发判定
	INCLUDE, ## 消息中只要包含关键词就触发判定
	EXCLUDE, ## 消息中只要不包含关键词就触发判定
	EQUAL, ## 消息与关键词完全匹配时触发判定
	REGEX ## 消息满足正则表达式时触发判定（此时关键词内容应为一个正则表达式）
}


## 事件在处理时被标记为停止传递后的阻断模式枚举，决定了该事件将如何被阻断传递
enum BlockMode{
	DISABLE, ## 即使标记为停止传递也不会进行阻断
	EVENT, ## 在当前插件中的所有该事件函数处理完毕后，将阻断传递，即不会传递给后续插件
	FUNCTION, ## 当前函数处理完毕后，阻断事件在当前插件内的传递，但后续插件仍会接收到事件
	ALL ## 当前函数处理完毕后，将完全阻断事件传递，事件后续函数及其他插件均不会收到事件
}


## 在插件中覆盖此虚函数，以便定义将在此插件的文件每次被读取时执行的操作
## [br][br]必须在此处使用[method set_plugin_info]函数来设置插件信息，插件才能被正常识别与读取
## [br][br]例如：[code]set_plugin_info("example","示例插件","author","1.0","这是插件的介绍")[/code]
## [br][br]可以在此处初始化和使用一些基本变量，但不建议执行其它代码，可能会导致出现未知问题
func _on_init()->void:
	return


## 在插件中覆盖此虚函数，以便定义RainyBot在与协议后端建立连接后插件将执行的操作
## [br][br]可以在此处进行一些与连接状态相关的操作，例如恢复连接后发送通知等
func _on_connect()->void:
	return


## 在插件中覆盖此虚函数，以便定义插件在被加载完毕后执行的操作
## [br][br]可以在此处进行各类事件/关键词/命令的注册，以及配置/数据文件的初始化等
func _on_load()->void:
	return


## 在插件中覆盖此虚函数，以便定义插件在所有其他插件加载完毕后执行的操作
## [br][br]可以在此处进行一些与其他插件交互相关的操作，例如获取某插件的实例等
## [br][br]注意：如果此插件硬性依赖某插件，推荐在插件信息中注册所依赖的插件，以确保其在此插件之前被正确加载
func _on_ready()->void:
	return


## 在插件中覆盖此虚函数，以便定义插件运行中的每一秒将执行的操作
## [br][br]可在此处进行一些计时，或时间判定相关的操作，例如整点报时等
func _on_process()->void:
	return


## 在插件中覆盖此虚函数，以便定义在RainyBot检测到运行时错误后将执行的操作
## [br][br]可在此处进行一些与错误处理相关的操作，例如向指定QQ发送通知等
## [br][br]您可以使用[method get_last_errors]函数来获取错误的详细内容
func _on_error()->void:
	pass


## 在插件中覆盖此虚函数，以便定义RainyBot在与协议后端断开建立连接后插件将执行的操作
## [br][br]可以在此处进行一些与连接状态相关的操作，例如断开连接后暂停某些任务的运行等
func _on_disconnect()->void:
	return


## 在插件中覆盖此虚函数，以便定义插件在即将被卸载时执行的操作
## [br][br]可在此处执行一些自定义保存或清理相关的操作，例如储存自定义的文件或清除缓存等
## [br][br]无需在此处取消注册事件/关键词/命令，或者对内置的配置/数据功能进行保存，插件卸载时将会自动进行处理
func _on_unload()->void:
	return


## 用于设定插件的相关信息，需要在[method _on_init]虚函数中执行以便RainyBot正确加载您的插件
## [br][br]需要的参数从左到右分别为插件ID(将强制转为小写，不可与其它已加载插件重复),插件名,插件作者,插件版本,插件描述,插件依赖(可选)
## [br][br]最后一项可选参数为此插件的依赖插件列表(数组)，需要以所依赖的插件的ID作为列表中的元素，如:[code]["example","example_1"][/code]
## [br][br]设置了插件依赖后，可以保证所依赖的插件一定在此插件之前被加载
func set_plugin_info(p_id:String,p_name:String,p_author:String,p_version:String,p_description:String,p_dependency=[])->void:
	return


## 用于获取插件的相关信息，将返回一个包含插件信息的字典
## [br][br]使用[code]id, name, author, version, description, dependency[/code]作为key即可从字典中获取对应信息
func get_plugin_info()->Dictionary:
	return {}


## 用于获取插件对应的文件名，将返回插件文件的名称 (如[code]ChatBot.gd[/code])
func get_plugin_filename()->String:
	return ""


## 用于获取插件对应的文件路径，将返回插件文件的绝对路径 (如 [code]D://RainyBot/plugins/ChatBot.gd[/code])
func get_plugin_filepath()->String:
	return ""


## 用于获取RainyBot的插件文件夹的路径，将返回插件文件夹的绝对路径 (如 [code]D://RainyBot/plugins/[/code])
func get_plugin_path()->String:
	return ""


## 用于获取插件的已运行时间，默认情况下为插件成功加载以来经过的秒数
func get_plugin_runtime()->int:
	return -1
	

## 用于获取RainyBot全局的已运行时间，默认情况下为RainyBot成功启动以来经过的秒数
func get_global_runtime()->int:
	return -1


## 用于获取其他插件的实例引用，可用于插件之间的联动与数据互通等
## [br][br]需要传入其他插件的ID作为参数来获取其实例，若未找到插件则返回null
func get_plugin_instance(plugin_id:String)->Plugin:
	return null


## 用于获取RainyBot的数据文件夹的路径，将返回数据文件夹的绝对路径 (如 [code]D://RainyBot/data/[/code])
func get_data_path()->String:
	return ""
	

## 用于获取该插件对应的数据库文件的路径，即插件对应的.rdb格式文件的绝对路径
func get_data_filepath()->String:
	return ""
	

## 用于获取RainyBot的配置文件夹的路径，将返回配置文件夹的绝对路径 (如 [code]D://RainyBot/config/[/code])	
func get_config_path()->String:
	return ""
	

## 用于获取该插件对应的配置文件的路径，即插件对应的.json格式文件的绝对路径
func get_config_filepath()->String:
	return ""
	
	
## 用于获取RainyBot的缓存文件夹的路径，将返回缓存文件夹的绝对路径 (如 D://RainyBot/cache)
func get_cache_path()->String:
	return ""


## 用于获取该插件对应的缓存数据库文件的路径，即插件对应的.rca格式文件的绝对路径
func get_cache_filepath()->String:
	return ""


## 用于检查插件对应的配置文件内容是否已被加载
func is_config_loaded()->bool:
	return false
	

## 用于检查插件对应的数据库文件内容是否已被加载
func is_data_loaded()->bool:
	return false


## 用于检查插件对应的缓存数据库文件内容是否已被加载
func is_cache_loaded()->bool:
	return false


## 用于获取最近一次检测到的所有RainyBot运行时错误，将返回一个包含了这些错误的字符串数组
## [br][br]如果自RainyBot启动至今还没有检测到任何运行时错误，将返回一个空数组
## [br][br]当前版本中仅支持自动检测脚本运行时错误，若要获取其他类型的错误，请通过主菜单来访问内部日志进行查看
func get_last_errors()->PackedStringArray:
	return PackedStringArray()


## 用于注册一个或多个事件并将其绑定到一个或多个函数，事件发生时将触发绑定的函数并传入事件实例
## [br][br]需要的参数从左到右分别为:
## [br][br]事件的类型:
## [br]- 此处可传入单个事件类型名，或一个包含了任意数量事件类型名的数组以批量注册事件
## [br]- 传入的事件需要直接或间接继承[Event]类，如[GroupMessageEvent](群消息事件)
##
## [br][br]事件绑定的函数名:
## [br]- 此处可传入单个函数名，或一个包含了任意数量函数名的数组以批量绑定函数
## [br]- 当对应事件发生时将依次传递并触发绑定的函数，绑定的函数需要定义一个参数用于接收事件实例
##
## [br][br]事件的全局优先级(可选,默认为0):
## [br]- 在多个插件同时注册了同一事件后，事件发生时将按照优先级由高到低的顺序传递事件到对应的插件
## [br]- 优先级相同时，将根据注册事件的时间顺序来依次传递事件
##
## [br][br]事件的阻断模式(可选,默认为BlockMode.ALL):
## [br]- 事件绑定的函数若返回true，将阻断事件被传递到后续函数或插件中 (异步函数无效)
## [br]- 阻断的具体行为将由阻断模式决定, 每种阻断模式的具体效果请参见上方的BlockMode枚举
func register_event(event,function,priority:int=0,block_mode:int=BlockMode.ALL)->void:
	return


## 用于取消注册一个或多个事件，取消注册后插件将不再对此事件做出响应
## [br][br]此处可传入单个事件类型名，或一个包含了任意数量事件类型名的数组以批量取消注册事件
func unregister_event(event)->void:
	return


## 用于注册一个控制台命令并将其绑定到指定函数，命令被执行时将触发此函数，并传入对应的命令名与参数数组
## [br][br]命令被注册后将会在帮助菜单中自动显示，无法注册已经存在的命令
## [br][br]绑定函数接收的参数数组中包含了以空格分隔的命令参数的列表，如命令 [code]plugins load xxx.gd[/code] ，传入的数组中将包含[code]["load","xxx.gd"][/code]
## [br][br]注册命令需要的参数从左到右分别为:
## [br]- 命令的名称 (即为在控制台触发此命令需要输入的内容，请勿包含空格，不可与已存在的命令重复；此处可传入单个命令名，或一个包含了任意数量命令名的数组以批量注册某个命令及其别称)
## [br]- 命令触发的函数名(当命令被执行时将触发的函数，此函数需要定义两个参数，分别用于接收命令名与传入的参数数组)
## [br]- [可选,默认为false]命令是否强制要求传入参数(若为true则在执行命令时必须传入参数，否则判定为用法错误)
## [br]- [可选,默认为空数组]命令的用法介绍(将在使用help指令或命令用法错误时显示。数组中的每项需为字符串，代表着一个子命令的用法)
## [br]- [可选,默认为false]命令是否需要在连接到协议后端后才能使用(若为true则在未连接协议后端时无法在控制台调用此命令)
func register_console_command(command,function,need_arguments:bool=false,usages:Array=[],need_connect:bool=false)->void:
	return


## 用于取消注册一个控制台命令，命令被取消注册后将无法在控制台被执行，且不会在帮助菜单中显示
## [br][br]需要传入对应的命令名来将其取消注册，无法取消注册不属于此插件的命令
func unregister_console_command(command)->void:
	return
	

## 用于注册一个或多个关键词并将其绑定到某个函数，关键词匹配时将触发绑定的函数并传入相关数据
## [br][br]注册的关键词不会自动进行匹配，而是需要手动调用或者在注册事件时将需要检测关键词的消息事件手动绑定到"[method trigger_keyword]"函数即可
## [br][br]注册需要的参数从左到右分别为:
## [br][br]关键词的内容:
## [br]- 此处可传入单个关键词字符串，或一个包含了任意数量关键词字符串的数组以批量注册关键词
## [br]- 若关键词包含[code]{@}[/code]，则满足匹配条件的同时还需要At机器人才视为匹配成功
## [br]- 若匹配模式为正则表达式模式，则关键词需要为一个正则表达式
##
## [br][br]关键词绑定的函数名:
## [br]- 当对应关键词匹配成功后将调用此函数，并传入四个参数
## [br]- 传入的四个参数分别为：关键词文本，解析后的关键词文本，关键词参数(通常为原消息去掉关键词后的文本)，触发关键词的事件实例引用
##
## [br][br]动态解析字典:
## [br]- 此处可以传入一个字典的引用，字典中的键与值均需要为字符串类型
## [br]- 若关键词中包含如"{xxx}"格式的文本，并且字典中拥有"xxx"这个键，那么实际用于匹配的关键词中的"{xxx}"文本将会被替换成字典中"xxx"键对应的值
## [br]- 例如，若您希望在运行时更改某插件中机器人的唤醒词，则只需将"{name}"注册为关键词，并指定一个包含"name"键的字典作为动态解析字典
## [br]- 后续您只需更改该字典中的"name"键对应的值，即可实时变更唤醒机器人的关键词
##
## [br][br]关键词的匹配模式
## [br]- 在某个消息事件触发"[method trigger_keyword]"函数后，将提取消息事件的文本并根据匹配模式进行匹配
## [br]- 只有满足匹配模式对应的条件的关键词才会触发绑定的函数，匹配模式的具体行为请参见上方的[member MatchMode]枚举
##
## [br][br]关键词匹配成功后阻断对应事件的传递 (可选,默认为true):
## [br]- 若此项为true,则在成功匹配关键词后，被对应事件调用的"[method trigger_keyword]"函数将返回true以尝试阻断事件的传递
## [br]- 若此项为false,但是关键词所触发的函数返回了true,那么被对应事件调用的"[method trigger_keyword]"函数也将返回true以尝试阻断事件的传递
## [br]- 阻断的具体行为将由相关事件注册时设置的阻断模式决定
func register_keyword(keyword,function,var_dic:Dictionary={},match_mode:int=MatchMode.BEGIN,block:bool=true)->void:
	return
	

## 用于取消注册一个关键词，关键词被取消注册后将不会被用于匹配
## [br][br]需要传入对应的关键词字符串来将其取消注册，无法取消注册不属于此插件的关键词
func unregister_keyword(keyword)->void:
	return


## 根据传入的消息事件来提取文本并从中匹配关键词
## [br][br]通常只需在注册消息事件时将其与事件直接绑定即可	
func trigger_keyword(event:Event)->bool:
	return false


## 用于初始化插件的配置文件，并将其加载到内存中，以便在后续对其内容进行操作
## [br][br]对于数据的储存，建议使用插件数据库功能，可以提供更快的读写速度及更好的类型安全性，且可储存几乎任何类型的数据
## [br][br]执行此函数时，将会检测是否已存在此插件对应的配置文件，否则将会基于给定的默认配置字典来新建一个配置文件
## [br][br]需要的参数从左到右分别为:
## [br][br]默认配置的字典(即为新建配置文件时其中将包含的内容，RainyBot将以Json格式将其保存为配置文件)
## [br][br][可选,默认为空字典]每个配置项的介绍(字典的key为配置项的名称,对应的值为此配置项的相关介绍,两者均为字符串)
func init_plugin_config(default_config:Dictionary,config_description:Dictionary={})->int:
	return OK


## 用于将内存中的配置保存到配置文件中，需要先初始化配置文件才能使用此函数
func save_plugin_config()->int:
	return OK


## 用于从已加载的配置中获取指定key对应的内容，需要先初始化配置文件才能使用此函数
func get_plugin_config(key)->Variant:
	return
		

## 用于从已加载的配置中检查指定key是否存在，需要先初始化配置文件才能使用此函数	
func has_plugin_config(key)->bool:
	return false
		

## 用于在已加载的配置中设定指定key的对应内容，需要先初始化配置文件才能使用此函数
## [br][br]最后一项可选的参数用于指定是否在设定的同时将更改立刻保存到配置文件中	
func set_plugin_config(key,value,save_file:bool=true)->int:
	return OK


## 用于直接获取已加载的配置的字典，便于以字典的形式对其进行操作，需要先初始化配置文件才能使用此函数
func get_plugin_config_metadata()->Dictionary:
	return {}


## 用于直接替换已加载的配置的字典为指定的字典，便于以字典的形式对其进行操作，需要先初始化配置文件才能使用此函数
## [br][br]最后一项参数用于指定是否在设定的同时将更改立刻保存到配置文件中	
func set_plugin_config_metadata(dic:Dictionary,save_file:bool=true)->int:
	return OK
	

## 用于直接获取已加载的数据库的字典，便于以字典的形式对其进行操作，需要先初始化数据库文件才能使用此函数
func get_plugin_data_metadata()->Dictionary:
	return {}


## 用于直接替换已加载的数据库的字典为指定的字典，便于以字典的形式对其进行操作，需要先初始化数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在设定的同时立即将更改保存到数据库文件中
func set_plugin_data_metadata(dic:Dictionary,save_file:bool=true)->int:
	return OK
	
	
## 用于直接获取已加载的缓存数据库的字典，便于以字典的形式对其进行操作，需要先初始化缓存数据库文件才能使用此函数
func get_plugin_cache_metadata()->Dictionary:
	return {}
	
	
## 用于直接替换已加载的缓存数据库的字典为指定的字典，便于以字典的形式对其进行操作，需要先初始化缓存数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在设定的同时立即将更改保存到缓存数据库文件中
func set_plugin_cache_metadata(dic:Dictionary,save_file:bool=true)->int:
	return OK


## 用于初始化插件的数据库文件，并将其加载到内存中，以便在后续对其内容进行操作
## [br][br]对于配置的储存，建议使用插件配置功能，以便指定默认配置与配置说明，且能使用常规编辑器对其进行编辑与更改
## [br][br]执行此函数时，将会检测是否已存在此插件对应的数据库文件，否则将会新建一个空白的数据库文件(.rdb格式)
func init_plugin_data()->int:
	return OK
			

## 用于将内存中的数据保存到数据库文件中，需要先初始化数据库文件才能使用此函数		
func save_plugin_data()->int:
	return OK
		

## 用于从已加载的数据库中获取指定key对应的内容，需要先初始化数据库文件才能使用此函数	
func get_plugin_data(key)->Variant:
	return
		

## 用于从已加载的数据库中检查指定key是否存在，需要先初始化数据库文件才能使用此函数			
func has_plugin_data(key)->bool:
	return false
		

## 用于在已加载的数据库中设定指定key的对应内容，需要先初始化数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在设定的同时将更改立即保存到数据库文件中
func set_plugin_data(key,value,save_file:bool=true)->int:
	return OK


## 用于在已加载的数据库中删除指定key及其对应内容，需要先初始化数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在删除的同时将更改立即保存到数据库文件中
func remove_plugin_data(key,save_file:bool=true)->int:
	return OK
		

## 用于在已加载的数据库中清空所有内容，需要先初始化数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在清空的同时将更改立即保存到数据库文件中
func clear_plugin_data(save_file:bool=true)->int:
	return OK


## 用于初始化插件的缓存数据库文件，并将其加载到内存中，以便在后续对其内容进行操作
## [br][br]缓存数据库中的所有内容及文件本身会在插件卸载/重载时保留，但是会在RainyBot关闭时永久删除
## [br][br]执行此函数时，将会检测是否已存在此插件对应的缓存数据库文件，否则将会新建一个空白的缓存数据库文件(.rca格式)
func init_plugin_cache()->int:
	return OK
			

## 用于将内存中的数据保存到缓存数据库文件中，需要先初始化缓存数据库文件才能使用此函数		
func save_plugin_cache()->int:
	return OK
		

## 用于从已加载的缓存数据库中获取指定key对应的内容，需要先初始化缓存数据库文件才能使用此函数	
func get_plugin_cache(key)->Variant:
	return
		

## 用于从已加载的缓存数据库中检查指定key是否存在，需要先初始化缓存数据库文件才能使用此函数			
func has_plugin_cache(key)->bool:
	return false
		

## 用于在已加载的缓存数据库中设定指定key的对应内容，需要先初始化缓存数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在设定的同时将更改立即保存到缓存数据库文件中
func set_plugin_cache(key,value,save_file:bool=true)->int:
	return OK


## 用于在已加载的缓存数据库中删除指定key及其对应内容，需要先初始化缓存数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在删除的同时将更改立即保存到缓存数据库文件中
func remove_plugin_cache(key,save_file:bool=true)->int:
	return OK
		

## 用于在已加载的缓存数据库中清空所有内容，需要先初始化缓存数据库文件才能使用此函数
## [br][br]最后一项可选参数用于指定是否在清空的同时将更改立即保存到缓存数据库文件中
func clear_plugin_cache(save_file:bool=true)->int:
	return OK


## 调用此函数后，插件将会尝试卸载自身
## [br][br]若此插件被其他插件依赖，则可能会卸载失败
func unload_plugin()->void:
	return


## 创建一个可用于生成图像的SubViewport节点，设置为指定大小，并添加为插件的子节点
## [br][br]如果设置了第二个参数(默认为[code]Vector2i(0,0)[/code])，则创建的SubViewport将基于第一个参数的大小渲染内容，并将渲染后的内容拉伸为第二个参数的大小
## [br][br]如果设置了第三个参数(默认为[code]false[/code])，则创建的SubViewport将使用透明背景，且基于此 SubViewport生成的图像也将拥有透明背景
func create_viewport(size:Vector2i,stretch_size:Vector2i=Vector2i.ZERO,transparent:bool=false)->SubViewport:
	return null


## 更新指定的SubViewport中渲染的内容，以便对其进行获取(配合await关键字可等待其更新完毕)
func update_viewport(viewport:SubViewport)->void:
	return


## 更新指定的SubViewport的渲染大小，还可以指定基于该渲染大小拉伸后的大小
## [br][br]如果设置了第三个参数(默认为[code]Vector2i(0,0)[/code])，则指定的SubViewport将基于第二个参数的大小渲染内容，并将渲染后的内容拉伸为第三个参数的大小
func set_viewport_size(viewport:SubViewport,size:Vector2i,stretch_size:Vector2i=Vector2i.ZERO)->void:
	return


## 设置指定的SubViewport是否启用透明背景。若启用透明背景，基于此 SubViewport生成的图像也将拥有透明的背景
func set_viewport_transparent(viewport:SubViewport,transparent:bool)->void:
	return


## 获取指定的SubViewport中渲染的内容的Image类图像
## [br][br]如果将第二个参数设置为true(默认为false)，则将在获取前对该SubViewport进行更新(需要配合await关键字使用)
func get_viewport_image(viewport:SubViewport,update:bool=false)->Image:
	return null


## 加载一个场景文件并添加为插件自身或指定节点的子节点
## [br][br]注意：场景加载的路径必须与场景在原项目时所在的相对路径相同，并尽可能将其使用的所有资源唯一化，否则可能会出现未知问题
## [br]例如，原项目中位于"[code]res://plugins[/code]"的场景在加载时必须位于"[code]RainyBot根目录/plugins[/code]"路径下
## [br][br]需要的参数从左到右分别为: 
## [br]- 场景文件路径
## [br]- [可选, 默认为插件自身] 附加到的父节点
func load_scene(path:String,parent:Node=null)->Node:
	return null


## 通过await调用后，将等待一个满足指定发送者id，指定群组id的指定类型的消息事件
## [br][br]消息事件不会自动进行上下文匹配，而是需要手动调用或者在注册消息事件时将需要匹配上下文的消息事件手动绑定到"[method respond_context]"函数即可
## [br][br]接收到满足条件的事件后，该函数将返回该事件的引用，否则在达到指定的超时秒数后，将返回null
## [br][br]需要的参数从左到右分别为：
## [br]- 要等待的消息事件的类型
## [br]- 要匹配的发送者ID(可选，若为-1则不匹配此项)
## [br]- 要匹配的群组ID(可选，若为-1则不匹配此项)
## [br]- 等待的超时时间(可选，默认为20秒; 若数值小于等于0, 或已存在相同的等待, 则不启用超时)
## [br]- 消息事件匹配成功后阻断对应事件的传递 (可选,默认为true)
func wait_context_custom(event_type:GDScript,sender_id:int=-1,group_id:int=-1,timeout:float=20.0,block:bool=true)->Variant:
	return


## 通过await调用后，将等待另外一个与指定消息事件相匹配的消息事件
## [br][br]消息事件不会自动进行上下文匹配，而是需要手动调用或者在注册消息事件时将需要进行匹配的消息事件手动绑定到"[method respond_context]"函数即可
## [br][br]接收到满足条件的事件后，该函数将返回该事件的引用，否则在达到指定的超时秒数后，将返回null
## [br][br]需要的参数从左到右分别为：
## [br]- 要匹配的消息事件的实例引用
## [br]- 是否要匹配消息事件中的发送者ID(可选，默认为true)
## [br]- 是否要匹配消息事件中的群组ID(可选，默认为true)
## [br]- 等待的超时时间(可选，默认为20秒; 若数值小于等于0, 或已存在相同的等待, 则不启用超时)
## [br]- 消息事件匹配成功后阻断对应事件的传递 (可选,默认为true)
func wait_context(event:MessageEvent,match_sender:bool=true,match_group:bool=true,timeout:float=20.0,block:bool=true)->Variant:
	return
	

## 通过await调用后，将等待指定id的响应，并在收到响应后返回响应的内容
## [br][br]要进行响应，需要在某处手动调用"[method respond_context]"函数并传入相同的ID
## [br][br]若未进行响应且在达到指定的超时秒数后，将返回null
## [br][br]需要的参数从左到右分别为：
## [br]- 要等待响应的自定义ID
## [br]- 等待的超时时间(可选，默认为20秒; 若数值小于等于0, 或已存在相同的等待, 则不启用超时)
func wait_context_id(context_id:String,timeout:float=20.0)->Variant:
	return


## 用于响应正在进行中的上下文等待
## [br][br]若第一个参数传入内容为一个消息事件，则将用于响应与消息事件相关的上下文等待，并且第二个参数将被忽略
## [br]通常只需在注册消息事件时将其与事件直接绑定后即可自动进行此类上下文响应
##
## [br][br]若第一个参数传入内容为一个字符串，则将用于响应指定ID的上下文等待，此时可通过第二个参数指定响应的内容
## [br]第二个参数为可选参数，可以是任何类型的值；若不填则默认响应内容为布尔值true
func respond_context(context,response=true)->bool:
	return false
