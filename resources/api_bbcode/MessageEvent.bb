类: MessageEvent

继承自: Event
 
子类: FriendMessageEvent, GroupMessageEvent, OtherClientMessageEvent, StrangerMessageEvent, TempMessageEvent

RainyBot的消息事件类，与消息直接相关的各类事件通常直接或间接继承此类

方法:

	MessageChain get_message_chain ( )

	获取消息事件所对应的消息内容的消息链实例


	Array get_message_array ( Variant types=null, bool exclude=false, int max_size=-1 )

	根据指定的条件，来从消息事件包含的消息链实例中获取由符合条件的消息类实例组成的数组 
	
	可以传入的参数从左到右分别为: 
	
	所需的单个Message子类，或包含多种Message子类的数组(例如需要从消息链中获取所有的At类消息与Text类消息，则为[AtMessage,TextMessage]，为空将获取所有消息) 
	
	是否为排除模式(若为true，则将获取除上个参数的列表以外的所有消息类实例) 
	
	获取的消息数量的上限(若不为-1，则获取到的消息实例总数到达上限后将直接返回对应数组


	String get_message_text ( Variant types=null, bool exclude=false )

	根据指定的条件，来从消息事件包含的消息链实例中获取由符合条件的消息类实例转换并拼接而成的单个字符串 
	
	转换为字符串的具体行为请参见不同Message子类中的get_as_text()方法 
	
	可以传入的参数从左到右分别为: 
	
	所需的单个Message子类，或包含多种Message子类的数组(例如需要从消息链中获取所有的At类消息与Text类消息，则为[AtMessage,TextMessage]，为空将获取所有消息) 
	
	是否为排除模式(若为true，则将获取除上个参数的列表以外的所有消息类实例)


	int get_message_id ( )

	获取消息事件所对应的消息的ID


	int get_message_timestamp ( )

	获取消息事件所对应的消息的发送时间戳


	int get_sender_id ( )

	获取消息事件所对应的消息的发送者ID


	BotRequestResult reply ( Variant msg, bool quote=false, bool at=false, float timeout=-INF )

	用于回应某个消息事件，同时可指定是否需要引用回复原消息，以及是否需要AT原发送者(仅在群消息事件有效) 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	传入的第一个参数可以是以下类型: 
	- 字符串(将自动构造为文本消息实例，解析其中的BotCode，并将其作为消息链中的唯一消息实例发送) 
	- 单个消息实例(将其作为消息链中的唯一消息实例发送) 
	- 消息链实例(将其内容复制并发送) 
	- 包含以上三种类型实例的数组(将按照上方规则将数组中的实例依次合并添加至一个消息链并发送) 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间



