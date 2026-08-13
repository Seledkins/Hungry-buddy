function generate_nature_in_arena(nature_count = global.physical_nature_objects_limit, padding = global.nature_spawn_padding / 4, fly_padding = global.nature_spawn_padding){
	
	repeat(nature_count) {
		var _x = irandom_range(o_arena.bbox_left + padding, o_arena.bbox_right - padding);
		var _y = irandom_range(o_arena.bbox_top + padding, o_arena.bbox_bottom - padding);
		
		instance_create_nature_obj(_x ,_y, choose(o_nature_grass, o_nature_plant, o_nature_stick), 0, 0, 0, false, nature_depth);	
		 
		
		var fly_x = irandom_range(o_arena.bbox_left + fly_padding, o_arena.bbox_right - fly_padding);
		var fly_y = irandom_range(o_arena.bbox_top + fly_padding, o_arena.bbox_bottom - fly_padding);
		
		if (instance_number(o_fly) <= global.fly_limit) {
			instance_create_nature_obj(fly_x, fly_y, o_fly, random_range(0.8, 2), 0, random(359), false, 0,, {direction_step : random_range(1, 5)})	
		}
	}
}