类: BotJoinGroupEvent

继承自: GroupBotEvent
 
RainyBot的Bot自身加入群组事件，记录了Bot加入某个群组的事件的相关数据

方法:

	static BotJoinGroupEvent init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	Member get_invitor ( )

	获取邀请机器人加入群聊的邀请者的成员实例


	Group get_group ( )

	获取此事件对应的	机器人所加入的群聊的实例



