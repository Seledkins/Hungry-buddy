if (array_length(spawn_edits_info) != 0 && o_play_values_manager.killed_enemies_amount == spawn_edits_info[0].min_killed_enemies_to_edit) {
	var edit_info = spawn_edits_info[0];
	var obj_info = obj_info_array[edit_info.spawn_objs_array_index]
	var variables_to_change = struct_get_names(edit_info);
	
	for(var v = 0; v < array_length(variables_to_change); v++) {
		var variable_name = variables_to_change[v]
		var val = variable_struct_get(edit_info, variable_name);
		
		if (variable_struct_exists(obj_info, variable_name)) {
			struct_set(obj_info, variable_name, val)	
		}
	}
	
	array_delete(spawn_edits_info, 0, 1);
	
	show_message(obj_info);
	
}