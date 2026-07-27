function add_spawn_edit_enemy(obj_info_array, enemy, min_killed_enemies_to_edit, min_killed_enemies_to_spawn, current_count, max_enemy_count, enemy_count_increase, chance_to_spawn){
	
	var edit_info = {}
	var spawn_objs_array_index = undefined;
	var obj_info_array_length = array_length(obj_info_array)
	
	for (var oi = 0; oi < array_length(obj_info_array); oi++) {
		var enemy_info = obj_info_array[oi];
		var enemy_index = enemy_info.index;
		
		if (enemy == enemy_index) {
			struct_set(edit_info, "index", enemy);
			struct_set(edit_info, "spawn_objs_array_index", oi);
			spawn_objs_array_index = oi;
		}
	}
	
	var spawn_objs_array_enemy_info = obj_info_array[spawn_objs_array_index]
	
	if (min_killed_enemies_to_edit == next_enemy_min_killed_enemies_to_edit) {
		min_killed_enemies_to_edit = obj_info_array[spawn_objs_array_index + 1].min_killed_enemies_to_spawn;
		
	} else {
		var enemy_index_min_killed_enemies_to_spawn = min_killed_enemies_to_edit;
		
		for (var e = 0; e < array_length(obj_info_array); e++) {
			var enemy_info = obj_info_array[e];
			
			if (enemy_info.index == enemy_index_min_killed_enemies_to_spawn)	{
				min_killed_enemies_to_edit = enemy_info.min_killed_enemies_to_spawn;
			}
		}
	}
	
	struct_set(edit_info, "min_killed_enemies_to_edit", min_killed_enemies_to_edit);
	
	var val = undefined;
	
	if (min_killed_enemies_to_spawn != undefined) {val = min_killed_enemies_to_spawn; }
	else { val = spawn_objs_array_enemy_info.min_killed_enemies_to_spawn; }
	struct_set(edit_info, "min_killed_enemies_to_spawn", val);
	
	if (current_count != undefined) {val = current_count; }
	else { val = spawn_objs_array_enemy_info.current_count; }
	struct_set(edit_info, "current_count", val);
	
	if (max_enemy_count != undefined) {val = max_enemy_count; }
	else { val = spawn_objs_array_enemy_info.max_enemy_count; }
	struct_set(edit_info, "max_enemy_count", val);
	
	if (enemy_count_increase != undefined) {val = enemy_count_increase; }
	else { val = spawn_objs_array_enemy_info.enemy_count_increase; }
	struct_set(edit_info, "enemy_count_increase", val);
	
	if (chance_to_spawn != undefined) {val = chance_to_spawn; }
	else { val = spawn_objs_array_enemy_info.chance_to_spawn; }
	struct_set(edit_info, "chance_to_spawn", val);
	
	
	array_push(spawn_edits_info, edit_info)
	
}