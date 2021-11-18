extends Node


class_name Plugin


func _on_init():
	pass


func _on_load():
	pass


func _on_unload():
	pass


func set_plugin_info(p_id:String,p_name:String,p_author:String,p_version:String,p_description:String):
	return

	
func get_plugin_info()->Dictionary:
	return {}


func get_plugin_file()->String:
	return ""


func get_plugin_path()->String:
	return ""


func get_other_plugin_instance(plugin_id)->Plugin:
	return null


func register_message_event(msg_event:int,func_name:String):
	return


func unregister_message_event(msg_event:int):
	return


func register_command(command:String,need_arguments:bool,usages:Array,source:String):
	return


func unregister_command(command:String):
	return
	
	
func init_plugin_config(default_config:Dictionary,config_description:Dictionary={}):
	return


func save_plugin_config():
	return


func get_plugin_config(key):
	return
		
		
func set_plugin_config(key,value,save_file:bool=true):
	return


func init_plugin_data():
	return
			
			
func save_plugin_data():
	return
		
		
func get_plugin_data(key):
	return
		
		
func set_plugin_data(key,value,save_file:bool=true):
	return
