extends Node


enum DocType{
	JSON,
	MARKDOWN
}


func _ready():
	build_docs("res://api_gd/","res://api_json/",DocType.JSON)
	build_docs("res://api_gd/","res://api/",DocType.MARKDOWN)


func build_docs(path:String,target_path:String,type:int)->void:
	var doc_dic:Dictionary = {}
	_build_docs(path,target_path,doc_dic)
	for doc in doc_dic:
		var dic:Dictionary = doc_dic[doc]
		if !dic.has("path"):
			continue
			
		var dir:Directory = Directory.new()
		var file:File = File.new()
		var _path:String = dic["path"]
		dic.erase("path")
		if !dir.dir_exists(_path):
			dir.make_dir_recursive(_path)
		match type:
			DocType.JSON:
				_save_doc_json(_path,doc_dic[doc])
			DocType.MARKDOWN:
				_save_doc_markdown(_path,doc_dic[doc])


func _build_docs(path:String,target_path:String,doc_dic:Dictionary)->void:
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
			_build_docs(path+file+"/",target_path+file+"/",doc_dic)
			continue
		elif !file.begins_with(".") && file.ends_with(".gd"):
			_build_script_dic(load(path+file),target_path,doc_dic)

	dir.list_dir_end()


func _build_script_dic(script:GDScript,target_path:String,dic:Dictionary):
	var docs:Array[Dictionary] = script.get_script_documentation_list()
	for doc in docs:
		if dic.has(doc.name):
			dic[doc.name].merge(doc)
		else:
			dic[doc.name]=doc
			
		if !dic[doc.name].has("childs"):
			dic[doc.name]["childs"]=[]
			
		if dic.has(doc.inherits):
			var dict:Dictionary = dic[doc.inherits]
			dict["childs"].append(doc.name)
		else:
			dic[doc.inherits] = {"childs":[doc.name]}
			
		dic[doc.name]["path"]=target_path
		
		
func _save_doc_json(path:String,doc_dic:Dictionary):
	var file:File = File.new()
	var json:JSON = JSON.new()
	file.open(path+doc_dic.name+".json",File.WRITE)
	file.store_line(json.stringify(doc_dic,"\t",false))
	file.close()
		
		
func _save_doc_markdown(path:String,doc_dic:Dictionary):
	var file:File = File.new()
	var md_text:String
	md_text += "# 类: %s  \n" % doc_dic.name
	md_text += "  \n"
	md_text += "**继承自:** %s  \n" % doc_dic.inherits
	md_text += "  \n"
	if !doc_dic.childs.is_empty():
		md_text += "**子类:** %s  \n" % str(doc_dic.childs)
		md_text += "  \n"
	if doc_dic.brief_description != "":
		md_text += "%s  \n" % doc_dic.brief_description
		md_text += "  \n"
	if doc_dic.description != "":
		md_text += "## 描述  \n"
		md_text += "  \n"
		md_text += "%s  \n" % doc_dic.description
		md_text += "  \n"
	if !doc_dic.tutorials.is_empty():
		md_text += "## 教程  \n"
		md_text += "  \n"
		for t in doc_dic.tutorials:
			md_text += "- [%s](%s)  \n" % [t.title,t.link]
			md_text += "  \n"
	if !doc_dic.signals.is_empty():
		md_text += "## 信号 \n"
		md_text += "  \n"
		for s in doc_dic.signals:
			md_text += "- **%s(" % [s.name]
			if !s.arguments.is_empty():
				for a in s.arguments:
					if a.has("default_value"):
						md_text += "%s %s=%s, " % [a.type,a.name,a.default_value]
					else:
						md_text += "%s %s, " % [a.type,a.name]
			md_text += ")**  \n"
			md_text += "  \n"
			if s.description != "":
				md_text += "%s  \n" % s.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	if !doc_dic.constants.is_empty():
		md_text += "## 常量/枚举  \n"
		md_text += "  \n"
		for v in doc_dic.constants:
			if v.enumeration != "":
				md_text += "- **%s.%s** = **%s**  \n" % [v.enumeration,v.name,v.value]
			else:
				md_text += "- **%s** = **%s**  \n" % [v.name,v.value]
			md_text += "  \n"
			if v.description != "":
				md_text += "%s  \n" % v.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	if !doc_dic.variables.is_empty():
		md_text += "## 属性  \n"
		md_text += "  \n"
		for v in doc_dic.variables:
			if v.enumeration != "":
				md_text += "- %s **%s.%s**  \n" % [v.type,v.enumeration,v.name]
			else:
				md_text += "- %s **%s**  \n" % [v.type,v.name]
			md_text += "  \n"
			if v.has("default_value"):
				md_text += "*默认值:* %s  \n" % v.default_value
				md_text += "  \n"
			if v.has("setter"):
				md_text += "*Setter:* %s  \n" % v.setter
				md_text += "  \n"
			if v.has("getter"):
				md_text += "*Getter:* %s  \n" % v.setter
				md_text += "  \n"
			if v.description != "":
				md_text += "%s  \n" % v.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	if !doc_dic.methods.is_empty():
		md_text += "## 方法 \n"
		md_text += "  \n"
		for m in doc_dic.methods:
			md_text += "- **%s(" % [m.name]
			if !m.arguments.is_empty():
				for a in m.arguments:
					if a.has("default_value"):
						md_text += "%s %s=%s, " % [a.type,a.name,a.default_value]
					else:
						md_text += "%s %s, " % [a.type,a.name]
			md_text += ")**  \n"
			md_text += "  \n"
			if m.description != "":
				md_text += "%s  \n" % m.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	md_text = md_text.replacen("[br]","  \n")
	md_text = md_text.replacen(", )",")")
	md_text = md_text.replacen("[code]","`").replacen("[/code]","`")
	file.open(path+doc_dic.name+".md",File.WRITE)
	file.store_line(md_text)
	file.close()
