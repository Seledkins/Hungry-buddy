function show_debug_all_variables_instance(obj = id){
	
	var str = get_str_all_instance_variables(obj);
	show_debug_message(str);
	
	return str;
	
}