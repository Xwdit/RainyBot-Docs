# 类: GifImage

[(返回目录)](./)

**继承自:** [CoreAPI](CoreAPI.md)

RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送

## 信号

* **changed ( )**

在此Gif图像类实例的属性或数据发生变更时，将会触发此信号

***

## 方法

* static [GifImage](GifImage.md) **init (** [Vector2](https://docs.godotengine.org/en/latest/classes/class\_vector2.html) img\_size **)**

基于指定的图像大小来构造一个GifImage类图像的实例

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **add\_frame (** [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) image, [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) delay\_time **)**

向此Gif图像实例中添加一个新的图像帧，并设定这一帧的延迟时间 (持续时间)

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **insert\_frame (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx, [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) image, [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) delay\_time **)**

在指定的位置向此Gif图像实例中插入一个新的图像帧，并设定这一帧的延迟时间 (持续时间)

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **remove\_frame (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx **)**

删除此Gif图像实例中位于指定位置的某一帧

***

* [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) **get\_frame\_image (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx **)**

获取此Gif图像实例中位于指定位置的某一帧的图像

***

* [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) **get\_frame\_delay\_time (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx **)**

获取此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **set\_frame\_image (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx, [Image](https://docs.godotengine.org/en/latest/classes/class\_image.html) image **)**

设置此Gif图像实例中位于指定位置的某一帧的图像

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **set\_frame\_delay\_time (** [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) idx, [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) delay\_time **)**

设置此Gif图像实例中位于指定位置的某一帧的延迟时间 (持续时间)

***

* void **clear\_frames ( )**

清除此Gif图像实例中的所有帧

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **get\_frames\_count ( )**

获取此Gif图像实例中的所有帧的数量

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **set\_size (** [Vector2](https://docs.godotengine.org/en/latest/classes/class\_vector2.html) new\_size **)**

设置此Gif图像实例的图像大小

***

* [Vector2](https://docs.godotengine.org/en/latest/classes/class\_vector2.html) **get\_size ( )**

获取此Gif图像实例的图像大小

***

* [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) **get\_playback\_time ( )**

获取此Gif图像实例中的所有帧的总播放时间

***

* [int](https://docs.godotengine.org/en/latest/classes/class\_int.html) **save (** [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) path **)**

将此Gif图像实例生成图像数据并保存至指定的gif文件，需要配合await关键字使用

***

* [PackedByteArray](https://docs.godotengine.org/en/latest/classes/class\_packedbytearray.html) **get\_data ( )**

从此Gif图像实例生成并获取对应的gif图像数据，需要配合await关键字使用

***

* [float](https://docs.godotengine.org/en/latest/classes/class\_float.html) **get\_generate\_time ( )**

获取此Gif图像实例中的所有帧的预计生成时间，需要配合await关键字使用

***
