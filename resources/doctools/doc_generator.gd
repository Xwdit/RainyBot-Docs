extends Node


enum DocType{
	JSON,
	MARKDOWN,
	BBCODE
}


const DOC_LINK:String = "https://docs.godotengine.org/en/latest/classes/class_%s.html"


func _ready():
	build_docs("res://resources/api_gd/","res://docs/api/",DocType.MARKDOWN,false)
	build_docs("res://resources/api_gd/","res://resources/api_bbcode/",DocType.BBCODE,false)


func build_docs(path:String,target_path:String,type:int,keep_dir_struct:bool=true)->void:
	var doc_dic:Dictionary = {}
	_build_docs(path,target_path,doc_dic)
	for doc in doc_dic:
		var dic:Dictionary = doc_dic[doc]
		if !dic.has("path"):
			continue
			
		var _path:String = dic["path"] if keep_dir_struct else target_path
		dic.erase("path")
		if !DirAccess.dir_exists_absolute(_path):
			DirAccess.make_dir_recursive_absolute(_path)
		match type:
			DocType.JSON:
				_save_doc_json(_path,doc_dic[doc])
			DocType.MARKDOWN:
				_save_doc_markdown(_path,doc_dic[doc],doc_dic)
			DocType.BBCODE:
				_save_doc_bbcode(_path,doc_dic[doc],doc_dic)
	if !keep_dir_struct:
		if type == DocType.MARKDOWN:
			save_doc_markdown_catalog(target_path,doc_dic)
		else:
			save_doc_text_catalog(target_path,doc_dic)
		

func _build_docs(path:String,target_path:String,doc_dic:Dictionary)->void:
	var dir:DirAccess = DirAccess.open(path)
	if !dir:
		print(error_string(DirAccess.get_open_error()))
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
	var file = FileAccess.open(path+doc_dic.name+".json",FileAccess.WRITE)
	file.store_line(JSON.stringify(doc_dic,"\t",false))
	file = null
		
		
func _save_doc_markdown(path:String,doc_dic:Dictionary,dics:Dictionary):
	var md_text:String
	md_text += "# 类: %s  \n" % doc_dic.name
	md_text += "[(返回目录)](README.md)  \n"
	md_text += "  \n"
	var i_link:String = DOC_LINK % doc_dic.inherits.to_lower()
	if dics.has(doc_dic.inherits) and dics[doc_dic.inherits].has("name"):
		i_link = doc_dic.inherits+".md"
	md_text += "**继承自:** [%s](%s)  \n" % [doc_dic.inherits,i_link]
	md_text += "  \n"
	if !doc_dic.childs.is_empty():
		var c_text:String = ""
		for i in range(doc_dic.childs.size()):
			var c_link:String = DOC_LINK % doc_dic.childs[i].to_lower()
			if dics.has(doc_dic.childs[i]) and dics[doc_dic.childs[i]].has("name"):
				c_link = doc_dic.childs[i]+".md"
			c_text += "[%s](%s)" % [doc_dic.childs[i],c_link]
			if i < doc_dic.childs.size()-1:
				c_text += ", "
		md_text += "**子类:** %s  \n" % c_text
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
			md_text += "- **%s (** " % [s.name]
			if !s.arguments.is_empty():
				for a in s.arguments:
					var a_link:String = DOC_LINK % a.type.to_lower()
					if dics.has(a.type) and dics[a.type].has("name"):
						a_link = a.type+".md"
					if a.default_value != "":
						md_text += "[%s](%s) %s=%s, " % [a.type,a_link,a.name,a.default_value]
					else:
						md_text += "[%s](%s) %s, " % [a.type,a_link,a.name]
			md_text += " **)**  \n"
			md_text += "  \n"
			if s.description != "":
				md_text += "%s  \n" % s.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	if !doc_dic.enums.is_empty():
		md_text += "## 枚举  \n"
		md_text += "  \n"
		for e in doc_dic.enums:
			md_text += "enum **%s**  \n" % [e.name]
			md_text += "  \n"
			if e.description != "":
				md_text += "%s  \n" % e.description
				md_text += "  \n"
			for c in doc_dic.constants:
				if c.enumeration == e.name:
					md_text += "- **%s** = %s  \n" % [c.name,c.value]
					if c.description != "":
						md_text += "%s  \n" % c.description
						md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	if !doc_dic.constants.is_empty():
		var found:bool = false
		for v in doc_dic.constants:
			if v.enumeration == "":
				found = true
				break
		if found:
			md_text += "## 常量  \n"
			md_text += "  \n"
			for v in doc_dic.constants:
				if v.enumeration != "":
					continue
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
			var v_link:String = DOC_LINK % v.type.to_lower()
			if dics.has(v.type) and dics[v.type].has("name"):
				v_link = v.type+".md"
			if v.enumeration != "":
				md_text += "- [%s](%s) **%s.%s**  \n" % [v.type,v_link,v.enumeration,v.name]
			else:
				md_text += "- [%s](%s) **%s**  \n" % [v.type,v_link,v.name]
			md_text += "  \n"
			if v.default_value != "":
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
			md_text += "- "
			if m.has("qualifiers"):
				md_text += m.qualifiers + " "
			if m.return_type.to_lower() != "void":
				var r_link:String = DOC_LINK % m.return_type.to_lower()
				if dics.has(m.return_type) and dics[m.return_type].has("name"):
					r_link = m.return_type+".md"
				md_text += "[%s](%s) **%s (** " % [m.return_type,r_link,m.name]
			else:
				md_text += "%s **%s (** " % [m.return_type,m.name]
			if !m.arguments.is_empty():
				for a in m.arguments:
					var a_link:String = DOC_LINK % a.type.to_lower()
					if dics.has(a.type) and dics[a.type].has("name"):
						a_link = a.type+".md"
					if a.default_value != "":
						if a.type.findn("Array") != -1 and a.default_value == "null":
							a.default_value = "[]"
						elif a.type.findn("Dictionary") != -1 and a.default_value == "null":
							a.default_value = "{}"
						md_text += "[%s](%s) %s=%s, " % [a.type,a_link,a.name,a.default_value]
					else:
						md_text += "[%s](%s) %s, " % [a.type,a_link,a.name]
			md_text += " **)**  \n"
			md_text += "  \n"
			if m.description != "":
				md_text += "%s  \n" % m.description
				md_text += "  \n"
			md_text += "---  \n"
			md_text += "  \n"
	md_text = md_text.replacen("[br]","  \n")
	md_text = md_text.replacen(",  **)"," **)").replacen("(**  **)","( )")
	md_text = md_text.replacen("=inf_neg","=-INF")
	md_text = md_text.replacen("[code]","`").replacen("[/code]","`")
	var file = FileAccess.open(path+doc_dic.name+".md",FileAccess.WRITE)
	file.store_line(md_text)
	file = null
	
	
func _save_doc_bbcode(path:String,doc_dic:Dictionary,dics:Dictionary):
	var md_text:String
	md_text += "[font_size=25][b][color=#70bafa]类:[/color] %s[/b][/font_size]\n" % doc_dic.name
	md_text += "[color=#70bafa]继承:[/color] %s\n" % [doc_dic.inherits]
	if !doc_dic.childs.is_empty():
		var c_text:String = ""
		for i in range(doc_dic.childs.size()):
			c_text += "%s" % [doc_dic.childs[i]]
			if i < doc_dic.childs.size()-1:
				c_text += ", "
		md_text += "[color=#70bafa]派生:[/color] %s\n" % c_text
	md_text += "\n\n"
	if doc_dic.brief_description != "":
		md_text += "[b]%s[/b]\n" % doc_dic.brief_description
		md_text += "\n\n"
	if doc_dic.description != "":
		md_text += "[font_size=25][color=#70bafa][b]描述[/b][/color][/font_size]\n"
		md_text += "\n"
		md_text += "%s\n" % doc_dic.description
		md_text += "\n\n"
	if !doc_dic.tutorials.is_empty():
		md_text += "[font_size=25][color=#70bafa][b]教程[/b][/color][/font_size]\n"
		md_text += "\n"
		for t in doc_dic.tutorials:
			md_text += "- %s (%s)\n" % [t.title,t.link]
			md_text += "\n"
		md_text += "\n"
	if !doc_dic.signals.is_empty():
		md_text += "[font_size=25][color=#70bafa][b]信号[/b][/color][/font_size]\n"
		md_text += "\n"
		for s in doc_dic.signals:
			md_text += "	● "+char(0xFFFF)+"%s ( " % [s.name]
			if !s.arguments.is_empty():
				for a in s.arguments:
					if a.default_value != "":
						md_text += "%s %s=%s, " % [a.type,a.name,a.default_value]
					else:
						md_text += "%s %s, " % [a.type,a.name]
			md_text += " )\n"
			md_text += "\n"
			if s.description != "":
				md_text += "	%s\n" % s.description.replacen("[br]","\n	")
				md_text += "\n"
			md_text += "\n\n"
	if !doc_dic.enums.is_empty():
		md_text += "[font_size=25][color=#70bafa][b]枚举[/b][/color][/font_size]\n"
		md_text += "\n"
		for e in doc_dic.enums:
			md_text += "	[color=#70bafa]enum[/color] "+char(0xFFFF)+"%s\n" % [e.name]
			md_text += "\n"
			if e.description != "":
				md_text += "	%s\n" % e.description.replacen("[br]","\n	")
				md_text += "\n"
			for c in doc_dic.constants:
				if c.enumeration == e.name:
					md_text += "		● %s [color=gray]= %s[/color]\n" % [c.name,c.value]
					if c.description != "":
						md_text += "		[color=gray]%s[/color]\n" % c.description.replacen("[br]","\n		")
						md_text += "\n"
			md_text += "\n"
		md_text += "\n"
	if !doc_dic.constants.is_empty():
		var found:bool = false
		for v in doc_dic.constants:
			if v.enumeration == "":
				found = true
				break
		if found:
			md_text += "[font_size=25][color=#70bafa][b]常量[/b][/color][/font_size]\n"
			md_text += "\n"
			for v in doc_dic.constants:
				if v.enumeration != "":
					continue
				else:
					md_text += "	● "+char(0xFFFF)+"%s = %s\n" % [v.name,v.value]
				md_text += "\n"
				if v.description != "":
					md_text += "	%s\n" % v.description.replacen("[br]","\n	")
					md_text += "\n"
				md_text += "\n"
			md_text += "\n"
	if !doc_dic.variables.is_empty():
		md_text += "[font_size=25][color=#70bafa][b]属性[/b][/color][/font_size]\n"
		md_text += "\n"
		for v in doc_dic.variables:
			if v.enumeration != "":
				md_text += ("	● %s "+char(0xFFFF)+"%s.%s\n") % [v.type,v.enumeration,v.name]
			else:
				md_text += ("	● %s "+char(0xFFFF)+"%s\n") % [v.type,v.name]
			md_text += "\n"
			if v.default_value != "":
				md_text += "	默认值: %s\n" % v.default_value
				md_text += "\n"
			if v.has("setter"):
				md_text += "	Setter: %s\n" % v.setter
				md_text += "\n"
			if v.has("getter"):
				md_text += "	Getter: %s\n" % v.setter
				md_text += "\n"
			if v.description != "":
				md_text += "	%s\n" % v.description.replacen("[br]","\n	")
				md_text += "\n"
			md_text += "\n"
		md_text += "\n"
	if !doc_dic.methods.is_empty():
		md_text += "[font_size=25][color=#70bafa][b]方法[/b][/color][/font_size]\n"
		md_text += "\n"
		for m in doc_dic.methods:
			md_text += "	● "
			if m.has("qualifiers") and !m.qualifiers.is_empty():
				md_text += "[color=gray]"+ m.qualifiers + "[/color] "
			if m.return_type.to_lower() != "void":
				md_text += ("[color=#70bafa]%s[/color] "+char(0xFFFF)+"%s [color=gray]([/color] ") % [m.return_type,m.name]
			else:
				md_text += ("[color=gray]%s[/color] "+char(0xFFFF)+"%s [color=gray]([/color] ") % [m.return_type,m.name]
			if !m.arguments.is_empty():
				for a in m.arguments:
					if a.default_value != "":
						if a.type.findn("Array") != -1 and a.default_value == "null":
							a.default_value = "[]"
						elif a.type.findn("Dictionary") != -1 and a.default_value == "null":
							a.default_value = "{}"
						md_text += "[color=#70bafa]%s[/color] %s[color=gray] = %s[/color], " % [a.type,a.name,a.default_value]
					else:
						md_text += "[color=#70bafa]%s[/color] %s, " % [a.type,a.name]
			md_text += " [color=gray])[/color]\n"
			md_text += "\n"
			if m.description != "":
				md_text += "	%s\n" % m.description.replacen("[br]","\n	")
				md_text += "\n"
			md_text += "\n"
	md_text = md_text.replacen(",  [color=gray])"," [color=gray])").replacen(",  )"," )").replacen("(  )","( )").replacen("([/color]  [color=gray])","([/color] [color=gray])")
	md_text = md_text.replacen("=inf_neg","=-INF")
	var file = FileAccess.open(path+doc_dic.name+".bb",FileAccess.WRITE)
	file.store_line(md_text)
	file = null


func save_doc_markdown_catalog(path:String,dics:Dictionary):
	var text:Array = ["---\ndescription: 此页面记录了可供插件使用的各类RainyBot API\n---\n\n# 📦 RainyBot API\n\n"]
	_save_doc_markdown_catalog(dics,text)
	var file = FileAccess.open(path+"README.md",FileAccess.WRITE)
	text[0] = text[0].replacen("[br][br]","，")
	file.store_line(text[0])
	file = null
	

func _save_doc_markdown_catalog(dics:Dictionary,cata_text:Array,cname:String="",layer:int=0):
	if cname == "":
		var keys:Array = dics.keys()
		keys.sort()
		for d in keys:
			if dics[d].has("name") and !dics[dics[d].inherits].has("name"):
				if dics[d].brief_description != "":
					cata_text[0] += "* **[%s](%s.md)** - %s  \n" % [dics[d].name,dics[d].name,dics[d].brief_description]
					cata_text[0] += "  \n"
				else:
					cata_text[0] += "* **[%s](%s.md)** - (文档待补充)  \n" % [dics[d].name,dics[d].name]
					cata_text[0] += "  \n"
				for c in dics[d].childs:
					_save_doc_markdown_catalog(dics,cata_text,c,layer+1)
	else:
		var d:String = cname
		for i in range(layer):
			cata_text[0] += "  "
		if dics[d].brief_description != "":
			cata_text[0] += "* **[%s](%s.md)** - %s  \n" % [dics[d].name,dics[d].name,dics[d].brief_description]
			cata_text[0] += "  \n"
		else:
			cata_text[0] += "* **[%s](%s.md)** - (文档待补充)  \n" % [dics[d].name,dics[d].name]
			cata_text[0] += "  \n"
		for c in dics[d].childs:
			_save_doc_markdown_catalog(dics,cata_text,c,layer+1)
			
			
func save_doc_text_catalog(path:String,dics:Dictionary):
	var text:Array = [""]
	_save_doc_text_catalog(dics,text)
	var file = FileAccess.open(path+"CATALOG",FileAccess.WRITE)
	text[0] = text[0].replacen("[br][br]","，")
	file.store_line(text[0])
	file = null
	

func _save_doc_text_catalog(dics:Dictionary,cata_text:Array,cname:String="",layer:int=0):
	if cname == "":
		var keys:Array = dics.keys()
		keys.sort()
		for d in keys:
			if dics[d].has("name") and !dics[dics[d].inherits].has("name"):
				cata_text[0] += "%s\n" % [dics[d].name]
				for c in dics[d].childs:
					_save_doc_text_catalog(dics,cata_text,c,layer+1)
	else:
		var d:String = cname
		for i in range(layer):
			cata_text[0] += "	"
		cata_text[0] += "%s\n" % [dics[d].name]
		for c in dics[d].childs:
			_save_doc_text_catalog(dics,cata_text,c,layer+1)
