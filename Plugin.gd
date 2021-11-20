extends Node


class_name Plugin


func _on_init():
	pass


func _on_load():
	pass


func _on_process():
	pass


func _on_unload():
	pass


func set_plugin_info(p_id:String,p_name:String,p_author:String,p_version:String,p_description:String):
	return

	
func get_plugin_info()->Dictionary:
	return {}


func get_plugin_filename()->String:
	return ""


func get_plugin_path()->String:
	return ""


func set_plugin_runtime(time_sec:int):
	return
	

func get_plugin_runtime()->int:
	return 0


func get_other_plugin_instance(plugin_id)->Plugin:
	return null


func register_event(category:int,event_type:int,func_name:String):
	return


func unregister_event(category:int,event_type:int):
	return


func register_console_command(command:String,func_name:String,need_arguments:bool=false,usages:Array=[]):
	return


func unregister_console_command(command:String):
	return
	

func init_plugin_config(default_config:Dictionary,config_description:Dictionary={}):
	return


func save_plugin_config():
	return


func get_plugin_config(key):
	return
		
		
func set_plugin_config(key,value,save_file:bool=true):
	return


func get_plugin_config_metadata()->Dictionary:
	return {}


func set_plugin_config_metadata(dic:Dictionary):
	return
	

func init_plugin_data():
	return
			
			
func save_plugin_data():
	return
		
		
func get_plugin_data(key):
	return


func set_plugin_data(key,value,save_file:bool=true):
	return


func get_plugin_data_metadata()->Dictionary:
	return {}


func set_plugin_data_metadata(dic:Dictionary):
	return


func unload_plugin():
	return