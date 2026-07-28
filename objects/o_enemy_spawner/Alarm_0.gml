if (!instance_exists(o_hole_parent)) {
	exit
}

var enemy_info = get_random_enemy_info(spawn_objs_info); // get_random_enemy

if (enemy_info == undefined) {
	alarm[0] = spawn_delay;
	exit
}

var enemy = enemy_info.obj_index;
previous_obj = enemy;



var enemy_spawn_pattern_function = enemy_info.spawn_pattern_function;
enemy_spawn_pattern_function(enemy_info.min_distance_to_border, enemy_info.max_distance_to_border, oe_parent);

instance_enemy_create(spawn_x, spawn_y, enemy);

alarm[0] = spawn_delay;