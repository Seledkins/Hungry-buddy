function get_str_all_instance_variables(obj = id){
	var result_str = "";
	var variables_names = variable_instance_get_names(obj);
	array_push(variables_names, "x", "y", "sprite_index", "image_index", "image_alpha")
	show_debug_message("\n ---------- Variables for " + object_get_name(obj.object_index) + string(obj) + " ---------- ");
	for (var i = 0; i < array_length(variables_names); i++)
	{
	    result_str += variables_names[i] + ": " + string(variable_instance_get(obj, variables_names[i])) + "\n";
	}
	
	return result_str
	
}