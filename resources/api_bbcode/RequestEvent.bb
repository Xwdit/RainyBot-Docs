类: RequestEvent

继承自: Event
 
子类: GroupInviteRequestEvent, MemberJoinRequestEvent, NewFriendRequestEvent

RainyBot的请求事件类，与各类请求直接相关的各类事件通常直接或间接继承此类

方法:

	int get_event_id ( )

	获取请求事件的对应ID


	int get_sender_id ( )

	获取请求事件对应的发送者的ID


	String get_sender_name ( )

	获取请求事件对应的发送者的名称


	int get_group_id ( )

	获取请求事件相关的群组的ID(对于非群组请求，并且请求发送者不来自某群组时将返回0)


	String get_request_message ( )

	获取请求事件相关的申请消息的文本


	BotRequestResult respond ( int respond_type, String msg="", float timeout=-INF )

	用于响应当前的请求事件，可用的响应类型请参照每个具体的请求事件类型中的RespondType枚举 
	
	第二个参数为可选参数，可用于在响应请求的同时附加一段响应消息文本，例如拒绝理由等 
	
	配合await关键字可返回一个BotRequestResult类的实例，便于判断执行状态 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间



