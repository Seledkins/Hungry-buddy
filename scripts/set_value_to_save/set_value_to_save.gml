function set_value_to_save(global_variable_name, save_variable_name = "auto", save_path = ""){
	if (!variable_global_exists(global_variable_name)) {
		show_error($"Не могу добавить в пул сохраенения переменную {global_variable_name}", true);
	}
	
	if (save_variable_name == "auto") {
		save_variable_name = global_variable_name;
	}
	
	array_push(global.save_variables_info, {
		path: "",
		name : save_variable_name,	
		
	});
	
	return global.save_variables_info[-1];
}

