function pause_value_config(_sprite, _variable_from_obj, _variable_name, _variable_action_function = function(variable){return variable;}){
	// first argument of variable_action_funciton should be variable current variable and variable_action_function should return variable, ps you can do anything with current variable, just return him, that function is working
	
	return {sprite : _sprite, variable_from_obj : _variable_from_obj, variable_name : _variable_name, variable_action_function : _variable_action_function};
}