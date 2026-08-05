surface_set_target(o_blood_manager.blood_surface);
	var surface_x = o_arena.arena_width / 2 - (room_width / 2 - x);
	var surface_y = o_arena.arena_height / 2 - (room_height / 2 - y);
	
	draw_sprite_ext(sprite_index, image_index, surface_x, surface_y, image_xscale, image_yscale, 0, c_white, 1);
surface_reset_target();