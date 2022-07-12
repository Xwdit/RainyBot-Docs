# 类: GifImage  
  
**继承自:** CoreAPI  
  
RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送  
  
# 信号 
  
- **changed()**  
  
在此Gif图像类实例的属性或数据发生变更时，将会触发此信号  
  
---  
  
# 方法 
  
- **init(Vector2 img_size)**  
  
基于指定的图像大小来构造一个GifImage类图像的实例  
  
---  
  
- **add_frame(Image image, float delay_time)**  
  
向此Gif图像实例中添加一个新的图像帧，并设定这一帧的延迟时间 (持续时间)  
  
---  
  
- **insert_frame(int idx, Image image, float delay_time)**  
  
在指定的位置向此Gif图像实例中插入一个新的图像帧，并设定这一帧的延迟时间 (持续时间)  
  
---  
  
- **remove_frame(int idx)**  
  
删除此Gif图像实例中位于指定位置的某一帧  
  
---  
  
- **get_frame_image(int idx)**  
  
获取此Gif图像实例中位于指定位置的某一帧的图像  
  
---  
  
- **get_frame_delay_time(int idx)**  
  
获取此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)  
  
---  
  
- **set_frame_image(int idx, Image image)**  
  
设置此Gif图像实例中位于指定位置的某一帧的图像  
  
---  
  
- **set_frame_delay_time(int idx, float delay_time)**  
  
设置此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)  
  
---  
  
- **clear_frames()**  
  
清除此Gif图像实例中的所有帧  
  
---  
  
- **get_frames_count()**  
  
获取此Gif图像实例中的所有帧的数量  
  
---  
  
- **set_size(Vector2 new_size)**  
  
设置此Gif图像实例的图像大小  
  
---  
  
- **get_size()**  
  
获取此Gif图像实例的图像大小  
  
---  
  
- **get_playback_time()**  
  
获取此Gif图像实例中的所有帧的总播放时间  
  
---  
  
- **save(String path)**  
  
将此Gif图像实例生成图像数据并保存至指定的gif文件，需要配合await关键字使用  
  
---  
  
- **get_data()**  
  
从此Gif图像实例生成并获取对应的gif图像数据，需要配合await关键字使用  
  
---  
  
- **get_generate_time()**  
  
获取此Gif图像实例中的所有帧的预计生成时间，需要配合await关键字使用  
  
---  
  

