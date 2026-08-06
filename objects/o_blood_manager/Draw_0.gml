if (!surface_exists(blood_surface)) {
	blood_surface = arena_size_surface_create();	
}
	
	outline_draw_surface(blood_surface, blood_surface_x, blood_surface_y, ol_config(1, global.dark_blood_color, 1, 0.5 , 0, 1, 10));	
	
	surface_set_target(blood_surface);
		draw_clear_alpha(c_white, 0);
	surface_reset_target();
	
