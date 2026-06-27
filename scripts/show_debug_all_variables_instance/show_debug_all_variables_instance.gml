function show_debug_all_variables_instance(obj = id){
	
	var str = "";
	var variables_names = variable_instance_get_names(obj);
	show_debug_message("\n ---------- Variables for " + object_get_name(obj.object_index) + string(obj) + " ---------- ");
	for (var i = 0; i < array_length(variables_names); i++)
	{
	    str = variables_names[i] + ":" + string(variable_instance_get(obj, variables_names[i]));
	    show_debug_message(str);
	}
	
}