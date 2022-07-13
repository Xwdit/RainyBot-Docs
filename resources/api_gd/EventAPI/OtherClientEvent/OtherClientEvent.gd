extends Event #继承事件类，请勿随意改动


## RainyBot的其它客户端事件类，与其它客户端直接相关的各类事件通常直接或间接继承此类
class_name OtherClientEvent


## 获取事件对应的其它客户端的ID
func get_client_id()->int:
	return 0
	

## 获取事件对应的其它客户端的平台名称
func get_client_platform()->String:
	return ""
