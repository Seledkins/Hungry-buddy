function add_hidden_variabe(_obj, variables){
	
	var variable_info = {obj : _obj, variables : []}
	
	for(var a = 1; a < argument_count; a++){
		array_push(variable_info.variables, argument[a])
	}
	
	array_push(hidden_variables, variable_info)
}