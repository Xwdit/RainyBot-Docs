类: FlashImageMessage

继承自: Message
 
RainyBot的闪图消息类，其实例记录了与一个闪图消息相关的各类数据

方法:

	static FlashImageMessage init ( Image image )

	基于图像实例缓存并手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_gif ( GifImage gif_image )

	基于Gif动图实例缓存并手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_id ( String image_id )

	基于指定的图像ID来手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_url ( String image_url )

	基于指定的URL地址来手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_path ( String image_path )

	基于指定的本地文件路径来手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_base64 ( String image_base64 )

	基于指定的BASE64编码来手动构造一个FlashImageMessage类的实例


	static FlashImageMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	String get_image_id ( )

	获取此实例对应的图像的ID


	void set_image_id ( String image_id )

	设置此实例对应的图像的ID


	String get_image_url ( )

	获取此实例对应的图像的URL链接


	void set_image_url ( String image_url )

	设置此实例对应的图像的URL链接


	String get_image_path ( )

	获取此实例对应的图像的本地路径


	void set_image_path ( String image_path )

	设置此实例对应的图像的本地路径


	String get_image_base64 ( )

	获取此实例对应的图像的Base64编码


	void set_image_base64 ( String image_base64 )

	设置此实例对应的图像的Base64编码


	int get_image_height ( )

	获取此实例对应的图像的高度


	int get_image_width ( )

	获取此实例对应的图像的宽度


	float get_image_size ( )

	获取此实例对应的图像的文件大小


	String get_image_type ( )

	获取此实例对应的图像的类型文本


	bool is_emoji ( )

	判断此实例对应的图像是否为表情


	String get_as_text ( )

	将此实例获取为字符串的形式



