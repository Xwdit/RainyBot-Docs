类: VoiceMessage

继承自: Message
 
RainyBot的语音消息类，其实例记录了与一个语音消息相关的各类数据

方法:

	static VoiceMessage init_id ( String voice_id )

	基于指定的语音ID来手动构造一个VoiceMessage类的实例


	static VoiceMessage init_url ( String voice_url )

	基于指定的音频URL链接来手动构造一个VoiceMessage类的实例


	static VoiceMessage init_path ( String voice_path )

	基于指定的本地音频路径来手动构造一个VoiceMessage类的实例


	static VoiceMessage init_base64 ( String voice_base64 )

	基于指定的音频Base64编码来手动构造一个VoiceMessage类的实例


	static VoiceMessage init_meta ( Dictionary dic )

	通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用


	String get_voice_id ( )

	获取此实例对应的语音的ID


	void set_voice_id ( String voice_id )

	设置此实例对应的语音的ID


	String get_voice_url ( )

	获取此实例对应的音频的URL链接


	void set_voice_url ( String voice_url )

	设置此实例对应的音频的URL链接


	String get_voice_path ( )

	获取此实例对应的音频的本地路径


	void set_voice_path ( String voice_path )

	设置此实例对应的音频的本地路径


	String get_voice_base64 ( )

	获取此实例对应的音频的Base64编码


	void set_voice_base64 ( String voice_base64 )

	设置此实例对应的音频的Base64编码


	int get_voice_length ( )

	获取此示例对应的语音的长度(以秒为单位)


	String get_as_text ( )

	将此实例获取为字符串的形式



