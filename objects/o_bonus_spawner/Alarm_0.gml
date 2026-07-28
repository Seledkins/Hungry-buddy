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

var created_bonus = instance_bonus_create(spawn_x, spawn_y, bonus, 0, 0, 0, false);
with(created_bonus) { close_obj_in_arena(); }

alarm[0] = spawn_delay;