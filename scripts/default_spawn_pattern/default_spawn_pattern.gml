function default_spawn_pattern(min_distance_to_border, max_distance_to_border, obj_parent_to_check_nearest){
	
	var nearby_objs_count = 1
	var max_iterate_amount = 30
	radius_to_check_nearest = 80
	var iterate_amount = 0
	var distance_to_border = irandom_range(min_distance_to_border, max_distance_to_border)
	
	
	while(nearby_objs_count > 0 && iterate_amount < max_iterate_amount){
		
		dir_arena_center_from_player = point_direction(o_hole_parent.x, o_hole_parent.y, o_arena.x, o_arena.y) + irandom_range(-spawn_dir_spread, spawn_dir_spread)

		spawn_x = lengthdir_x(max_distance_to_spawn, dir_arena_center_from_player) + o_arena.x
		spawn_y = lengthdir_y(max_distance_to_spawn, dir_arena_center_from_player) + o_arena.y
		
		// close in arena and applys distance_to_border
		spawn_x = close_value_in_arena_width(spawn_x, spawn_padding) - lengthdir_x(distance_to_border, dir_arena_center_from_player);
		spawn_y = close_value_in_arena_height(spawn_y, spawn_padding) - lengthdir_y(distance_to_border, dir_arena_center_from_player);
	
		nearby_objs_count = collision_circle_foreach(spawn_x, spawn_y, radius_to_check_nearest, obj_parent_to_check_nearest, true, false, false, function(){})
	
		iterate_amount++
	
	}
	
	spawn_x = round(spawn_x);
	spawn_y = round(spawn_y);
	
	//show_debug_message(iterate_amount)
	
}