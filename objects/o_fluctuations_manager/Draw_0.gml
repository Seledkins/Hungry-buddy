if (!surface_exists(fluctuation_surface)) {
	fluctuation_surface = arena_size_surface_create();	
}
	
	draw_set_alpha(global.fluctuations_alpha);
	draw_set_colour(c_white);
		draw_surface(fluctuation_surface, fluctuation_surface_x, fluctuation_surface_y);	
	draw_set_alpha(1);
	
	surface_set_target(fluctuation_surface);
		draw_clear_alpha(c_white, 0);
	surface_reset_target();
	

