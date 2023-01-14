extends CoreAPI #继承自CoreAPI


## RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送
class_name GifImage


## 在此Gif图像类实例的属性或数据发生变更时，将会触发此信号
signal changed()


## 基于指定的图像大小来构造一个GifImage类图像的实例
static func init(img_size:Vector2)->GifImage:
	return null
	

## 向此Gif图像实例中添加一个新的图像帧，并设定这一帧的延迟时间 (持续时间)
func add_frame(image:Image,delay_time:float)->int:
	return OK


## 在指定的位置向此Gif图像实例中插入一个新的图像帧，并设定这一帧的延迟时间 (持续时间)
func insert_frame(idx:int,image:Image,delay_time:float)->int:
	return OK


## 删除此Gif图像实例中位于指定位置的某一帧
func remove_frame(idx:int)->int:
	return OK
		

## 获取此Gif图像实例中位于指定位置的某一帧的图像
func get_frame_image(idx:int)->Image:
	return null
		

## 获取此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)
func get_frame_delay_time(idx:int)->float:
	return 0.0
		

## 设置此Gif图像实例中位于指定位置的某一帧的图像
func set_frame_image(idx:int,image:Image)->int:
	return OK
		
	
## 设置此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)
func set_frame_delay_time(idx:int,delay_time:float)->int:
	return OK


## 清除此Gif图像实例中的所有帧
func clear_frames()->void:
	return


## 获取此Gif图像实例中的所有帧的数量
func get_frames_count()->int:
	return 0
	

## 设置此Gif图像实例的图像大小
func set_size(new_size:Vector2)->int:
	return OK


## 获取此Gif图像实例的图像大小
func get_size()->Vector2:
	return Vector2.ZERO


## 获取此Gif图像实例中的所有帧的总播放时间
func get_playback_time()->float:
	return 0.0


## 将此Gif图像实例生成图像数据并保存至指定的gif文件，需要配合await关键字使用
func save(path:String)->int:
	return OK


## 获取此Gif图像实例中的所有帧的预计生成时间，需要配合await关键字使用
func get_generate_time()->float:
	return 0.0
