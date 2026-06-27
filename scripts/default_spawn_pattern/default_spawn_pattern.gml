function default_spawn_pattern(){
	
	dir_arena_center_from_player = point_direction(o_hole_parent.x, o_hole_parent.y, o_arena.x, o_arena.y) + irandom_range(-spawn_dir_spread, spawn_dir_spread)

	spawn_x = lengthdir_x(max_distance_to_spawn, dir_arena_center_from_player) + o_arena.x
	spawn_y = lengthdir_y(max_distance_to_spawn, dir_arena_center_from_player) + o_arena.y

	spawn_x = clamp(spawn_x, spawn_padding, limitx_to_spawn - spawn_padding)
	spawn_y = clamp(spawn_y, spawn_padding, limity_to_spawn - spawn_padding)

}