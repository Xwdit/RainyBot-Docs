extends CoreAPI


func get_ws_url()->String:
	return ""


func is_bot_connected()->bool:
	return false
	
	
func send_bot_request(command,sub_command=null,content={},timeout:float=20.0)->Dictionary:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return {}