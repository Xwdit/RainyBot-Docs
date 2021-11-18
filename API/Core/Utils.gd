extends CoreAPI


class_name Utils


#返回格式为xx:xx:xx的时间字符串
static func get_formated_time()->String:
	return ""


#在小于10的数字前加上0，并返回为字符串
static func get_beautifuler_num(num)->String:
	return ""


#发送Http Get请求并获取回调字典
static func send_http_get_request(url:String,timeout:float = 20.0)->Dictionary:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return {}
