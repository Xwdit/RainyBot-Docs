extends CoreAPI #继承自CoreAPI


## RainyBot的Http请求结果类，可从其中快速获取某次Http请求的结果数据
class_name HttpRequestResult


## 获取此请求的URL字符串
func get_request_url()->String:
	return ""
	

## 获取此请求的请求数据(字符串/字节数组)
func get_request_data():
	return ""
	

## 将此请求的请求数据解析为字典并返回
func get_request_data_dic()->Dictionary:
	return {}
	

## 获取此请求的headers数组
func get_request_headers()->PackedStringArray:
	return PackedStringArray()
	

## 获取此请求的结果状态	
func get_result_status()->int:
	return -1
	

## 获取此请求的结果响应码	
func get_response_code()->int:
	return -1
	

## 获取此请求的结果的headers
func get_headers()->PackedStringArray:
	return PackedStringArray()


## 尝试将此请求的结果解析为字符串并返回
func get_as_text()->String:
	return ""
	

## 尝试将此请求的结果解析为字典并返回
func get_as_dic()->Dictionary:
	return {}


## 直接返回此请求的结果的二进制数据数组
func get_as_byte()->PackedByteArray:
	return PackedByteArray()
	

## 尝试自动判断此请求的结果的图像格式，解析并返回其图像实例，支持的图像格式为: [code]png,jpg,bmp,tga,webp[/code]
## [br][br]若图像的格式已知，建议使用[code]get_as_[格式]_image()[/code]系列函数以获得更好的性能 (如[method get_as_png_image]函数)
func get_as_image()->Image:
	return null


## 尝试将此请求的结果作为png格式解析并返回其图像实例
func get_as_png_image()->Image:
	return null
	

## 尝试将此请求的结果作为jpg格式解析并返回其图像实例
func get_as_jpg_image()->Image:
	return null
	

## 尝试将此请求的结果作为bmp格式解析并返回其图像实例
func get_as_bmp_image()->Image:
	return null
	

## 尝试将此请求的结果作为tga格式解析并返回其图像实例
func get_as_tga_image()->Image:
	return null


## 尝试将此请求的结果作为webp格式解析并返回其图像实例
func get_as_webp_image()->Image:
	return null


## 尝试将此请求的结果的二进制数据保存到指定路径的文件
func save_to_file(path:String)->int:
	return -1
