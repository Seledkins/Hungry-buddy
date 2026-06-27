if (!instance_exists(o_hole_parent)) {
	exit	
}

var enemy_info = get_random_enemy_info();
var enemy = enemy_info.enemy_index;
previous_enemy = enemy;

var enemy_spawn_pattern_function = enemy_info.spawn_pattern_function;
enemy_spawn_pattern_function();

instance_enemy_create(spawn_x, spawn_y, enemy);

if (spawn_delay > spawn_delay_min) {
	spawn_delay -= spawn_delay_decr;
}

alarm[0] = spawn_delay;