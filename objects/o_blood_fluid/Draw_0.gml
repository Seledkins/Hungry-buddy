surface_set_target(o_blood_manager.blood_surface);

	var surface_x = x_to_arenax(x);
	var surface_y = y_to_arenay(y);
	
	draw_sprite_ext(sprite_index, image_index, surface_x, surface_y, image_xscale, image_yscale, 0, global.bright_blood_color, 1);
	
surface_reset_target();