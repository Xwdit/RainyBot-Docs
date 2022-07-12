extends Node


func _ready():
	build_api_dics("res://api/")


func build_api_dics(path:String)->void:
	var dir:Directory = Directory.new()
	var error:int = dir.open(path)
	if error!=OK:
		print(error_string(error))
		return
		
	dir.list_dir_begin()

	while true:
		var file:String = dir.get_next()
		if file == "":
			break
		if dir.current_is_dir():
			build_api_dics(path+file+"/")
			continue
		elif !file.begins_with(".") && file.ends_with(".gd"):
			build_script_json(load(path+file),path)

	dir.list_dir_end()


func build_script_json(script:GDScript,path:String):
	var _scr:GDScript = script
	var docs:Array[Dictionary] = _scr.get_script_documentation_list()
	var json:JSON = JSON.new()
	for doc in docs:
		var text:String = json.stringify(doc)
		var file:File = File.new()
		file.open(path+doc.name+".json",File.WRITE)
		file.store_line(text)
		file.close()
