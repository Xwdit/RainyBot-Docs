extends MessageAPI


class_name CacheMessage


static func init_meta(dic:Dictionary)->CacheMessage:
	return null


func get_metadata()->Dictionary:
	return {}


func set_metadata(dic:Dictionary):
	return


func get_message_chain()->MessageChain:
	return null
	

#可能返回Member,GroupMember或OtherClient类的实例
func get_sender():
	return null
