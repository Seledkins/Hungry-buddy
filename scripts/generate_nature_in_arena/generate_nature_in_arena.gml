function generate_nature_in_arena(nature_count = global.physical_nature_objects_limit - 5, padding = 20){
	repeat(nature_count) {
		var _x = irandom_range(o_arena.bbox_left + padding, o_arena.bbox_right - padding);
		var _y = irandom_range(o_arena.bbox_top + padding, o_arena.bbox_bottom - padding);
		
		
		instance_create_nature_obj(_x ,_y, choose(o_nature_grass, o_nature_standing, o_nature_stick), 0, 0, 0, false, nature_depth);	
	}
}