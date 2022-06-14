extends CoreAPI #继承自CoreAPI


## RainyBot的实用工具类，其中提供了各种类型的便捷功能
class_name Utils


## 获取以HH:mm:ss为格式的当前时间文本
static func get_formated_time()->String:
	return ""


## 返回传入数字的字符串，并在传入的数字小于10时在字符串前方加入一个"0"
static func get_beautifuler_num(num)->String:
	return ""


## 通过await调用时，将发送一个Http Get请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult
## 需要的参数从左到右分别为 请求URL,超时时间(可选，默认为20秒)
static func send_http_get_request(url:String,timeout:int=20)->HttpRequestResult:
	return null


## 通过await调用时，将发送一个Http Post请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult
## 需要的参数从左到右分别为 请求URL,请求内容，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒)
static func send_http_post_request(url:String,request_data="",headers:PackedStringArray=PackedStringArray([]),timeout:int=20)->HttpRequestResult:
	return null
