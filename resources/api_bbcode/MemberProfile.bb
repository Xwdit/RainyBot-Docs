类: MemberProfile

继承自: MemberAPI
 
RainyBot的个体成员资料类，通常代表一个对应实例，储存了某个个体成员的相关资料

描述:

这是RainyBot的个体成员资料类，通常代表一个对应实例，储存了某个个体成员的相关资料 [br]当查询某群聊成员的相关资料时，不论其是否为机器人的个体成员，也将通过此类实例储存并返回其资料 [br]此类实例储存的资料包括但不限于昵称，邮箱，年龄，等级，签名，性别等

枚举:

	enum Sex

	这是代表了资料中性别的枚举，在进行性别判断相关操作时可在转为整数后用于对比 
	
	如"get_sex() == MemberProfile.Sex.MALE"可判断资料性别是否为男性

		UNKNOWN = 0
		未知

		MALE = 1
		男性

		FEMALE = 2
		女性


方法:

	static MemberProfile init_user ( int user_id, float timeout=-INF )

	获取指定ID用户的资料数据并将其构造为一个MemberProfile类的实例，需要配合await关键字使用 
	
	可以通过指定timeout参数来自定义获取请求结果的超时时间，若不指定则默认将使用配置文件中设置的超时时间


	static MemberProfile init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个MemberProfile类的实例，仅当你知道自己在做什么时才使用


	Dictionary get_metadata ( )

	获取实例中的元数据字典，仅当你知道自己在做什么时才使用


	void set_metadata ( Dictionary dic )

	使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用


	String get_nickname ( )

	获取实例中储存的昵称信息


	String get_email ( )

	获取实例中储存的邮箱信息


	int get_age ( )

	获取实例中储存的年龄信息


	int get_level ( )

	获取实例中储存的等级信息


	String get_sign ( )

	获取实例中储存的个性签名信息


	int get_sex ( )

	获取实例中储存的性别信息，将返回一个对应Sex枚举的整数值


	bool is_sex ( int sex )

	判断资料中的性别是不是指定类型的性别



