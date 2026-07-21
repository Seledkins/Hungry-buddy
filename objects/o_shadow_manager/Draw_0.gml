if (!surface_exists(shadow_surface)) {
	shadow_surface = shadow_surface_create();	
}
	
	draw_set_alpha(global.shadow_alpha);
	draw_set_colour(global.shadow_color);
		draw_surface(shadow_surface, 0, 0);	
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	surface_set_target(shadow_surface);
		draw_clear_alpha(global.shadow_color, 0);
	surface_reset_target();
	

