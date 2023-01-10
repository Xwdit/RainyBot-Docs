类: Event

继承自: EventAPI
 
子类: ActionEvent, BotEvent, FriendEvent, GroupEvent, MessageEvent, OtherClientEvent, RequestEvent

RainyBot的事件类，各种事件类型将直接或间接继承此类

方法:

	Dictionary get_metadata ( )

	获取实例中的元数据字典，仅当你知道自己在做什么时才使用


	void set_metadata ( Dictionary dic )

	使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用



