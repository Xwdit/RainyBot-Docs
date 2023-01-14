# 类: GifImage  
[(返回目录)](README.md)  
  
**继承自:** [CoreAPI](CoreAPI.md)  
  
RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送  
  
## 信号 
  
- **changed ( )**  
  
在此Gif图像类实例的属性或数据发生变更时，将会触发此信号  
  
---  
  
## 方法 
  
- static [GifImage](GifImage.md) **init (** [Vector2](https://docs.godotengine.org/en/latest/classes/class_vector2.html) img_size **)**  
  
基于指定的图像大小来构造一个GifImage类图像的实例  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **add_frame (** [Image](https://docs.godotengine.org/en/latest/classes/class_image.html) image, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) delay_time **)**  
  
向此Gif图像实例中添加一个新的图像帧，并设定这一帧的延迟时间 (持续时间)  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **insert_frame (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx, [Image](https://docs.godotengine.org/en/latest/classes/class_image.html) image, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) delay_time **)**  
  
在指定的位置向此Gif图像实例中插入一个新的图像帧，并设定这一帧的延迟时间 (持续时间)  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **remove_frame (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx **)**  
  
删除此Gif图像实例中位于指定位置的某一帧  
  
---  
  
-  [Image](https://docs.godotengine.org/en/latest/classes/class_image.html) **get_frame_image (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx **)**  
  
获取此Gif图像实例中位于指定位置的某一帧的图像  
  
---  
  
-  [float](https://docs.godotengine.org/en/latest/classes/class_float.html) **get_frame_delay_time (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx **)**  
  
获取此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **set_frame_image (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx, [Image](https://docs.godotengine.org/en/latest/classes/class_image.html) image **)**  
  
设置此Gif图像实例中位于指定位置的某一帧的图像  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **set_frame_delay_time (** [int](https://docs.godotengine.org/en/latest/classes/class_int.html) idx, [float](https://docs.godotengine.org/en/latest/classes/class_float.html) delay_time **)**  
  
设置此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)  
  
---  
  
-  void **clear_frames ( )**  
  
清除此Gif图像实例中的所有帧  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **get_frames_count ( )**  
  
获取此Gif图像实例中的所有帧的数量  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **set_size (** [Vector2](https://docs.godotengine.org/en/latest/classes/class_vector2.html) new_size **)**  
  
设置此Gif图像实例的图像大小  
  
---  
  
-  [Vector2](https://docs.godotengine.org/en/latest/classes/class_vector2.html) **get_size ( )**  
  
获取此Gif图像实例的图像大小  
  
---  
  
-  [float](https://docs.godotengine.org/en/latest/classes/class_float.html) **get_playback_time ( )**  
  
获取此Gif图像实例中的所有帧的总播放时间  
  
---  
  
-  [int](https://docs.godotengine.org/en/latest/classes/class_int.html) **save (** [String](https://docs.godotengine.org/en/latest/classes/class_string.html) path **)**  
  
将此Gif图像实例生成图像数据并保存至指定的gif文件，需要配合await关键字使用  
  
---  
  
-  [float](https://docs.godotengine.org/en/latest/classes/class_float.html) **get_generate_time ( )**  
  
获取此Gif图像实例中的所有帧的预计生成时间，需要配合await关键字使用  
  
---  
  

