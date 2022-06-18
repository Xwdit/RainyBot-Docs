extends CoreAPI #继承自CoreAPI


## RainyBot的Http请求结果类，可从其中快速获取某次Http请求的结果数据
class_name HttpRequestResult


## 获取此请求的URL字符串
func get_request_url()->String:
	return ""
	

## 获取此请求的请求数据字符串
func get_request_data()->String:
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


## 直接返回此请求的结果的元二进制数据数组
func get_as_byte()->PackedByteArray:
	return PackedByteArray()
