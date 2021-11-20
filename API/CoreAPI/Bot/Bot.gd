extends CoreAPI


class_name Bot


static func get_id()->int:
	return 0
	

static func get_friend_list()->MemberList:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
	
	
static func get_group_list()->GroupList:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


static func get_profile()->MemberProfile:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null


static func get_cache_message(msg_id:int)->CacheMessage:
	await self.script_changed #用于触发编辑器的错误检查，防止调用此函数时遗漏await关键字
	return null
