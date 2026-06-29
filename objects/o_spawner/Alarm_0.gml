if (!instance_exists(o_hole_parent)) {
	exit	
}

var enemy_info = get_random_enemy_info(enemies_info_array);
var enemy = enemy_info.enemy_index;
var enemy_amount_room = instance_number(enemy_info.enemy_index)
var current_count = floor(enemy_info.current_count)
previous_enemy = enemy;

if (enemy_amount_room >= current_count) {
	alarm[0] = spawn_delay;
	exit;
}

var enemy_spawn_pattern_function = enemy_info.spawn_pattern_function;
enemy_spawn_pattern_function();

instance_enemy_create(spawn_x, spawn_y, enemy);

//if (spawn_delay > spawn_delay_min) {
//	spawn_delay -= spawn_delay_decr;
//}

alarm[0] = spawn_delay;