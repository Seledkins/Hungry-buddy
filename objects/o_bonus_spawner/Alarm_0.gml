if (!instance_exists(o_hole_parent)) {
	exit
}

var bonus_info = get_random_bonus_info(spawn_objs_info); 

if (bonus_info == undefined) {
	alarm[0] = spawn_delay;
	exit
}

var bonus = bonus_info.obj_index;
previous_obj = bonus;

var bonus_spawn_pattern_function = bonus_info.spawn_pattern_function;
bonus_spawn_pattern_function(bonus_info.min_distance_to_border, bonus_info.max_distance_to_border, o_bonus_parent);

instance_create_spawn_apperance(spawn_x, spawn_y, bonus, o_play_values_manager.layid_bonuses);

alarm[0] = spawn_delay;