///@description spawn
if (!instance_exists(o_hole_parent)) {
	exit
}

var obj_info = get_random_enemy_info(obj_info_array); // get_random_obj

if (obj_info == undefined) {
	alarm[0] = spawn_delay;
	exit
}

var obj = obj_info.index;
previous_obj = obj;



var obj_spawn_pattern_function = obj_info.spawn_pattern_function;
obj_spawn_pattern_function(obj_info.min_distance_to_border, obj_info.max_distance_to_border);

instance_enemy_create(spawn_x, spawn_y, obj);

alarm[0] = spawn_delay;