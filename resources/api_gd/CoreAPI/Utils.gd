extends CoreAPI #继承自CoreAPI


## RainyBot的实用工具类，其中提供了各种类型的便捷功能
class_name Utils


## 获取以HH:mm:ss为格式的当前时间文本
static func get_formated_time()->String:
	return ""


## 返回传入数字的字符串，并在传入的数字小于10时在字符串前方加入一个"0"
static func get_beautifuler_num(num:float)->String:
	return ""


## 通过await调用时，将发送一个Http Get请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult
## [br][br]需要的参数从左到右分别为 请求URL,请求headers(可选，默认为空数组),超时时间(可选，默认为20秒)
static func send_http_get_request(url:String,headers:PackedStringArray=PackedStringArray([]),timeout:int=20)->HttpRequestResult:
	return null


## 通过await调用时，将发送一个Http Post请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult
## [br][br]需要的参数从左到右分别为 请求URL，请求内容，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒)
static func send_http_post_request(url:String,request_data:String="",headers:PackedStringArray=PackedStringArray([]),timeout:int=20)->HttpRequestResult:
	return null


## 通过await调用时，将发送一个Http Put请求到指定的URL，并在收到结果或超时后返回一个HttpRequestResult
## [br][br]需要的参数从左到右分别为 请求URL，请求内容，请求headers(可选，默认为空数组)，超时时间(可选，默认为20秒)
static func send_http_put_request(url:String,request_data:String="",headers:PackedStringArray=PackedStringArray([]),timeout:int=20)->HttpRequestResult:
	return null


## 通过await调用时，将尝试异步加载指定路径的资源，等待其加载完毕/出错，并返回加载完毕的资源或null
## [br][br]需要的参数从左到右分别为 资源路径，资源类型提示(可选，为空时将自动判断类型)，是否使用子线程(可选，启用时将加快加载速度，但可能会影响主线程的性能)
static func load_threaded(path:String,type_hint:String="",use_sub_threads:bool=false)->Resource:
	return null
