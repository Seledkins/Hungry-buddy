if (!instance_exists(o_hole_parent)) {
	exit
}

var enemy_info = get_random_enemy_info(enemies_info_array);

if (enemy_info == undefined) {
	alarm[0] = spawn_delay;
	exit
}

var enemy = enemy_info.enemy_index;
previous_enemy = enemy;



var enemy_spawn_pattern_function = enemy_info.spawn_pattern_function;
enemy_spawn_pattern_function(enemy_info.max_distance_to_border);

instance_enemy_create(spawn_x, spawn_y, enemy);

alarm[0] = spawn_delay;